use crate::bridge::{TryFromKotlin, TryIntoKotlin};
use crate::jni_ext::JObjectExt;
use jni::objects::JObject;
use jni::JNIEnv;

impl<'a, T: TryIntoKotlin<'a, U>, U> TryIntoKotlin<'a, U> for Vec<T> {
    #[inline]
    fn try_into_kotlin(&self, args: &U, env: &JNIEnv<'a>) -> jni::errors::Result<JObject<'a>> {
        let list = env.new_object("java/util/ArrayList", "()V", &[])?;
        let list = env.get_list(list)?;
        for item in self.iter() {
            let item = item.try_into_kotlin(args, env)?.auto_local(env);
            list.add(item.as_obj())?;
        }
        Ok(list.into())
    }
}

impl<T: TryFromKotlin> TryFromKotlin for Vec<T> {
    fn try_from_kotlin<'a>(value: JObject<'a>, env: &JNIEnv<'a>) -> jni::errors::Result<Self> {
        env.get_list(value)?
            .iter()?
            .map(|extra_value| T::try_from_kotlin(extra_value, env))
            .collect::<jni::errors::Result<Vec<_>>>()
    }
}