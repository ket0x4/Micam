.class public Lcom/android/camera/effect/ShaderNativeUtil;
.super Ljava/lang/Object;
.source "ShaderNativeUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "CameraEffectJNI"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ShaderNativeUtil"

    const-string v2, "ShaderNativeUtil load CameraEffectJNI.so failed."

    .line 16
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static native getJpegPicture(IIIII)[B
.end method

.method public static getPicture(IIIII)[B
    .locals 0

    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/ShaderNativeUtil;->getJpegPicture(IIIII)[B

    move-result-object p0

    return-object p0
.end method

.method private static native initJpegTexture([BII)[I
.end method

.method public static initTexture([BII)[I
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/android/camera/effect/ShaderNativeUtil;->initJpegTexture([BII)[I

    move-result-object p0

    return-object p0
.end method
