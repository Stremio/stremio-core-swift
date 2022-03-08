use crate::bridge::{TryFromKotlin, TryIntoKotlin};
use crate::env::{AndroidEnv, KotlinClassName};
use crate::jni_ext::JObjectExt;
use jni::objects::JObject;
use jni::JNIEnv;
use stremio_core::types::profile::{Auth, GDPRConsent, Profile, Settings, User};
use url::Url;

impl TryFromKotlin for GDPRConsent {
    fn try_from_kotlin<'a>(value: JObject<'a>, env: &JNIEnv<'a>) -> jni::errors::Result<Self> {
        let tos = env.call_method(value, "getTos", "()Z", &[])?.z()?;
        let privacy = env.call_method(value, "getPrivacy", "()Z", &[])?.z()?;
        let marketing = env.call_method(value, "getMarketing", "()Z", &[])?.z()?;
        Ok(GDPRConsent {
            tos,
            privacy,
            marketing,
        })
    }
}

impl<'a> TryIntoKotlin<'a, ()> for GDPRConsent {
    #[inline]
    fn try_into_kotlin(&self, _args: &(), env: &JNIEnv<'a>) -> jni::errors::Result<JObject<'a>> {
        let classes = AndroidEnv::kotlin_classes().unwrap();
        env.new_object(
            classes.get(&KotlinClassName::GDPRConsent).unwrap(),
            "(ZZZ)V",
            &[self.tos.into(), self.privacy.into(), self.marketing.into()],
        )
    }
}

impl<'a> TryIntoKotlin<'a, ()> for User {
    #[inline]
    fn try_into_kotlin(&self, _args: &(), env: &JNIEnv<'a>) -> jni::errors::Result<JObject<'a>> {
        let classes = AndroidEnv::kotlin_classes().unwrap();
        let id = self.id.try_into_kotlin(&(), env)?.auto_local(env);
        let email = self.email.try_into_kotlin(&(), env)?.auto_local(env);
        let fb_id = self.fb_id.try_into_kotlin(&(), env)?.auto_local(env);
        let avatar = self.avatar.try_into_kotlin(&(), env)?.auto_local(env);
        let gdpr_consent = self.gdpr_consent.try_into_kotlin(&(), env)?.auto_local(env);
        env.new_object(
            classes.get(&KotlinClassName::User).unwrap(),
            format!(
                "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;L{};)V",
                KotlinClassName::GDPRConsent.value()
            ),
            &[
                id.as_obj().into(),
                email.as_obj().into(),
                fb_id.as_obj().into(),
                avatar.as_obj().into(),
                gdpr_consent.as_obj().into(),
            ],
        )
    }
}

impl<'a> TryIntoKotlin<'a, ()> for Auth {
    #[inline]
    fn try_into_kotlin(&self, _args: &(), env: &JNIEnv<'a>) -> jni::errors::Result<JObject<'a>> {
        let classes = AndroidEnv::kotlin_classes().unwrap();
        let key = self.key.0.try_into_kotlin(&(), env)?.auto_local(env);
        let user = self.user.try_into_kotlin(&(), env)?.auto_local(env);
        env.new_object(
            classes.get(&KotlinClassName::Auth).unwrap(),
            format!("(Ljava/lang/String;L{};)V", KotlinClassName::User.value()),
            &[key.as_obj().into(), user.as_obj().into()],
        )
    }
}

impl TryFromKotlin for Settings {
    fn try_from_kotlin<'a>(value: JObject<'a>, env: &JNIEnv<'a>) -> jni::errors::Result<Self> {
        let interface_language = env
            .call_method(
                value,
                "getInterfaceLanguage",
                format!("()L{};", KotlinClassName::String.value()),
                &[],
            )?
            .l()?
            .auto_local(env);
        let interface_language = String::try_from_kotlin(interface_language.as_obj(), env)?;
        let streaming_server_url = env
            .call_method(
                value,
                "getStreamingServerUrl",
                format!("()L{};", KotlinClassName::String.value()),
                &[],
            )?
            .l()?
            .auto_local(env);
        let streaming_server_url = String::try_from_kotlin(streaming_server_url.as_obj(), env)?;
        let streaming_server_url =
            Url::parse(&streaming_server_url).expect("Settings.streaming_server_url parse failed");
        let binge_watching = env
            .call_method(value, "getBingeWatching", "()Z", &[])?
            .z()?;
        let play_in_background = env
            .call_method(value, "getPlayInBackground", "()Z", &[])?
            .z()?;
        let play_in_external_player = env
            .call_method(value, "getPlayInExternalPlayer", "()Z", &[])?
            .z()?;
        let hardware_decoding = env
            .call_method(value, "getHardwareDecoding", "()Z", &[])?
            .z()?;
        let subtitles_language = env
            .call_method(
                value,
                "getSubtitlesLanguage",
                format!("()L{};", KotlinClassName::String.value()),
                &[],
            )?
            .l()?
            .auto_local(env);
        let subtitles_language = String::try_from_kotlin(subtitles_language.as_obj(), env)?;
        let subtitles_size = env
            .call_method(value, "getSubtitlesSize-w2LRezQ", "()B", &[])?
            .b()?;
        let subtitles_size = subtitles_size as u8;
        let subtitles_font = env
            .call_method(
                value,
                "getSubtitlesFont",
                format!("()L{};", KotlinClassName::String.value()),
                &[],
            )?
            .l()?
            .auto_local(env);
        let subtitles_font = String::try_from_kotlin(subtitles_font.as_obj(), env)?;
        let subtitles_bold = env
            .call_method(value, "getSubtitlesBold", "()Z", &[])?
            .z()?;
        let subtitles_offset = env
            .call_method(value, "getSubtitlesOffset-w2LRezQ", "()B", &[])?
            .b()?;
        let subtitles_offset = subtitles_offset as u8;
        let subtitles_text_color = env
            .call_method(
                value,
                "getSubtitlesTextColor",
                format!("()L{};", KotlinClassName::String.value()),
                &[],
            )?
            .l()?
            .auto_local(env);
        let subtitles_text_color = String::try_from_kotlin(subtitles_text_color.as_obj(), env)?;
        let subtitles_background_color = env
            .call_method(
                value,
                "getSubtitlesBackgroundColor",
                format!("()L{};", KotlinClassName::String.value()),
                &[],
            )?
            .l()?
            .auto_local(env);
        let subtitles_background_color =
            String::try_from_kotlin(subtitles_background_color.as_obj(), env)?;
        let subtitles_outline_color = env
            .call_method(
                value,
                "getSubtitlesOutlineColor",
                format!("()L{};", KotlinClassName::String.value()),
                &[],
            )?
            .l()?
            .auto_local(env);
        let subtitles_outline_color =
            String::try_from_kotlin(subtitles_outline_color.as_obj(), env)?;
        let seek_time_duration = env
            .call_method(value, "getSeekTimeDuration-pVg5ArA", "()I", &[])?
            .i()?;
        let seek_time_duration = seek_time_duration as u32;
        Ok(Settings {
            interface_language,
            streaming_server_url,
            binge_watching,
            play_in_background,
            play_in_external_player,
            hardware_decoding,
            subtitles_language,
            subtitles_size,
            subtitles_font,
            subtitles_bold,
            subtitles_offset,
            subtitles_text_color,
            subtitles_background_color,
            subtitles_outline_color,
            seek_time_duration,
            ..Default::default()
        })
    }
}

impl<'a> TryIntoKotlin<'a, ()> for Settings {
    #[inline]
    fn try_into_kotlin(&self, _args: &(), env: &JNIEnv<'a>) -> jni::errors::Result<JObject<'a>> {
        let classes = AndroidEnv::kotlin_classes().unwrap();
        let interface_language = self
            .interface_language
            .try_into_kotlin(&(), env)?
            .auto_local(env);
        let streaming_server_url = self
            .streaming_server_url
            .try_into_kotlin(&(), env)?
            .auto_local(env);
        let binge_watching = self.binge_watching.into();
        let play_in_background = self.play_in_background.into();
        let play_in_external_player = self.play_in_external_player.into();
        let hardware_decoding = self.hardware_decoding.into();
        let subtitles_language = self
            .subtitles_language
            .try_into_kotlin(&(), env)?
            .auto_local(env);
        let subtitles_size = self.subtitles_size.into();
        let subtitles_font = self
            .subtitles_font
            .try_into_kotlin(&(), env)?
            .auto_local(env);
        let subtitles_bold = self.subtitles_bold.into();
        let subtitles_offset = self.subtitles_offset.into();
        let subtitles_text_color = self
            .subtitles_text_color
            .try_into_kotlin(&(), env)?
            .auto_local(env);
        let subtitles_background_color = self
            .subtitles_background_color
            .try_into_kotlin(&(), env)?
            .auto_local(env);
        let subtitles_outline_color = self
            .subtitles_outline_color
            .try_into_kotlin(&(), env)?
            .auto_local(env);
        let seek_time_duration = (self.seek_time_duration as i32).into();
        env.new_object(
            classes.get(&KotlinClassName::Settings).unwrap(),
            format!(
                "(L{};L{};ZZZZL{};BL{};ZBL{};L{};L{};I)V",
                KotlinClassName::String.value(),
                KotlinClassName::String.value(),
                KotlinClassName::String.value(),
                KotlinClassName::String.value(),
                KotlinClassName::String.value(),
                KotlinClassName::String.value(),
                KotlinClassName::String.value(),
            ),
            &[
                interface_language.as_obj().into(),
                streaming_server_url.as_obj().into(),
                binge_watching,
                play_in_background,
                play_in_external_player,
                hardware_decoding,
                subtitles_language.as_obj().into(),
                subtitles_size,
                subtitles_font.as_obj().into(),
                subtitles_bold,
                subtitles_offset,
                subtitles_text_color.as_obj().into(),
                subtitles_background_color.as_obj().into(),
                subtitles_outline_color.as_obj().into(),
                seek_time_duration,
            ],
        )
    }
}

impl<'a> TryIntoKotlin<'a, ()> for Profile {
    #[inline]
    fn try_into_kotlin(&self, _args: &(), env: &JNIEnv<'a>) -> jni::errors::Result<JObject<'a>> {
        let classes = AndroidEnv::kotlin_classes().unwrap();
        let auth = self.auth.try_into_kotlin(&(), env)?.auto_local(env);
        let settings = self.settings.try_into_kotlin(&(), env)?.auto_local(env);
        env.new_object(
            classes.get(&KotlinClassName::Profile).unwrap(),
            format!(
                "(L{};L{};)V",
                KotlinClassName::Auth.value(),
                KotlinClassName::Settings.value()
            ),
            &[auth.as_obj().into(), settings.as_obj().into()],
        )
    }
}