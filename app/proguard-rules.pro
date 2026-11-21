# R8 / ProGuard rules for NoVaY

# Keep source file and line numbers for readable crash reports
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile
-keepattributes Signature,InnerClasses,EnclosingMethod,RuntimeVisibleAnnotations,RuntimeVisibleParameterAnnotations

# AndroidX @Keep & Compose navigation/UI entrypoints
-keep,allowobfuscation @interface androidx.annotation.Keep
-keep @androidx.annotation.Keep class * { *; }
-keepclassmembers class * {
    @androidx.annotation.Keep *;
}

# Application, Activities & Services (including isolated :probe process)
-keep public class dot.jcversa.novay.NovayApp
-keep public class dot.jcversa.novay.MainActivity
-keep public class dot.jcversa.novay.downloads.NovayDownloadService
-keep public class dot.jcversa.novay.downloads.NovayProbeService

# Data models serialized via org.json / intent extras / state holders
-keepclassmembers class dot.jcversa.novay.data.** {
    *;
}
-keepclassmembers class dot.jcversa.novay.downloads.EpisodeDownloadMeta {
    *;
}

# Media3 ExoPlayer & HLS extractors/renderers
-keep class androidx.media3.exoplayer.hls.** { *; }
-keep class androidx.media3.exoplayer.video.** { *; }
-keep class androidx.media3.exoplayer.audio.** { *; }
-keep class androidx.media3.extractor.** { *; }
-dontwarn androidx.media3.**

# Lottie Compose
-keep class com.airbnb.lottie.** { *; }
-dontwarn com.airbnb.lottie.**

# Haze & Compose graphics
-keep class dev.chrisbanes.haze.** { *; }
-dontwarn dev.chrisbanes.haze.**

# Coil image pipeline
-keep class coil.** { *; }
-dontwarn coil.**

# OkHttp optional platform / Conscrypt / JSSE references
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn org.conscrypt.**
-dontwarn org.bouncycastle.**
-dontwarn org.openjsse.**
-dontwarn javax.annotation.**
-dontwarn org.codehaus.mojo.animal_sniffer.**
