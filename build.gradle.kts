import com.google.protobuf.gradle.*
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("multiplatform") version "1.8.0"
    id("com.android.library") version "7.2.2"
    id("org.mozilla.rust-android-gradle.rust-android") version "0.9.0"
    id("com.google.protobuf") version "0.8.18"
}

val kotlinVersion: String by extra
val pbandkVersion: String by extra
val protobufVersion: String by extra
val stremioCoreAndroidProfile: String by extra

buildscript {
    extra["kotlinVersion"] = "1.7.20"
    extra["pbandkVersion"] = "0.14.2"
    extra["protobufVersion"] = "3.21.0"
    extra["stremioCoreAndroidProfile"] = "release"

    val kotlinVersion: String by extra

    repositories {
        google()
        mavenCentral()
        maven("https://plugins.gradle.org/m2/")
    }

    dependencies {
        classpath("com.android.tools.build:gradle:7.2.2")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:${kotlinVersion}")
        classpath("org.mozilla.rust-android-gradle:plugin:0.9.0")
        classpath("com.google.protobuf:protobuf-gradle-plugin:0.8.18")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

kotlin {
    ios()
    android()

    sourceSets {
        val commonMain by getting {
            dependencies {
                // implementation("...")
            }
        }
        val commonTest by getting {
            dependencies {
                implementation(kotlin("test"))
            }
        }
        val androidMain by getting {
            dependencies {
                implementation("pro.streem.pbandk:pbandk-runtime:${pbandkVersion}")
                implementation("org.jetbrains.kotlin:kotlin-reflect:${kotlinVersion}")
            }
        }
        val androidTest by getting
    }
}

android {
    compileSdk = 33
    ndkVersion = "25.2.9519653"

    defaultConfig {
        minSdk = 21
        targetSdk = 33
    }

    sourceSets {
        getByName("main") {
            manifest.srcFile("src/androidMain/AndroidManifest.xml")
        }
    }
}

protobuf {
    generatedFilesBaseDir = "$projectDir/src"

    protoc {
        artifact = "com.google.protobuf:protoc:${protobufVersion}"
    }

    plugins {
        id("pbandk") {
            artifact = "pro.streem.pbandk:protoc-gen-pbandk-jvm:${pbandkVersion}:jvm8@jar"
        }
    }

    generateProtoTasks {
        ofSourceSet("androidMain").forEach { task ->
            task.builtins {
                remove("java")
            }
            task.plugins {
                id("pbandk")
            }
        }
    }
}

tasks.withType<KotlinCompile>().configureEach {
    kotlinOptions.freeCompilerArgs += "-Xopt-in=kotlin.RequiresOptIn"
}

cargo {
    module = "./"
    libname = "stremio_core_android"
    targets = listOf("arm", "arm64", "x86", "x86_64")
    verbose = true
    profile = if (rootProject.extra.has("stremio_core_android_profile")) {
        rootProject.extra.get("stremio_core_android_profile") as String
    } else {
        "debug"
    }
}

tasks.whenTaskAdded {
    if (name == "javaPreCompileDebug" || name == "javaPreCompileRelease") {
        dependsOn("cargoBuild")
    }
}
