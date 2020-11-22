.class public Lcom/android/camera/hardware/MTKCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "MTKCameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;,
        Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;,
        Lcom/android/camera/hardware/MTKCameraProxy$StereoWarningCallback;,
        Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 3

    const/4 p0, 0x1

    :try_start_0
    new-array p0, p0, [Ljava/lang/Class;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "cancelContinuousShot"

    const-string v2, "()V"

    .line 201
    invoke-static {p0, v0, v2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    .line 202
    aget-object p0, p0, v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MTKCameraProxy"

    const-string p1, "cancelContinuousMode IllegalArgumentException"

    .line 205
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 5

    const-string p0, "MTKCameraProxy"

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "enableRaw16"

    const-string v4, "(Z)V"

    .line 459
    invoke-static {v1, v2, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 461
    aget-object v1, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {v2, v1, p1, v0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 463
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "disableRawCallback NoSuchMethodException ownerClazz="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v1, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "disableRawCallback IllegalArgumentException"

    .line 466
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public enableStereoMode()V
    .locals 5

    .line 471
    const-class p0, Landroid/hardware/Camera;

    const-string v0, "setProperty"

    const-string v1, "(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static {p0, v0, v1}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 473
    const-class v0, Landroid/hardware/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "client.appmode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MtkStereo"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 3

    const-string p0, "exposure-time"

    .line 506
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 507
    invoke-static {}, Lcom/android/camera/Device;->useMicrosecondExposureTime()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 510
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MTKCameraProxy"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 514
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "max-exposure-time"

    .line 492
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 494
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 495
    invoke-static {}, Lcom/android/camera/Device;->useMicrosecondExposureTime()Z

    move-result p1

    if-eqz p1, :cond_1

    mul-int/lit16 p0, p0, 0x3e8

    :cond_1
    return p0
.end method

.method public getMinExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "min-exposure-time"

    .line 484
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 485
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 486
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 487
    invoke-static {}, Lcom/android/camera/Device;->useMicrosecondExposureTime()Z

    move-result p1

    if-eqz p1, :cond_1

    mul-int/lit16 p0, p0, 0x3e8

    :cond_1
    return p0
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "flash-mode-values"

    .line 272
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "off,on,auto,red-eye,torch"

    .line 279
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "snapshot-picture-flip"

    .line 257
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "exposure-meter-values"

    .line 349
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedCaptureMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "cap-mode-values"

    .line 261
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 262
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "iso-speed-values"

    .line 211
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedStereoPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    const-string v0, "refocus-picture-size-values"

    .line 478
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->splitSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "video-hfr"

    .line 340
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "zsd-mode"

    .line 345
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "3dnr-mode"

    .line 299
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "exposure-meter"

    .line 283
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    const-string p0, "burst-num"

    .line 245
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setBurstShotSpeed(Landroid/hardware/Camera;I)V
    .locals 5

    const-string p0, "MTKCameraProxy"

    .line 185
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBurstShotSpeed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setContinuousShotSpeed"

    const-string v4, "(I)V"

    .line 187
    invoke-static {v1, v2, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    aget-object v1, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-virtual {v2, v1, p1, v0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "setBurstShotSpeed IllegalArgumentException"

    .line 192
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setCameraMode(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    const-string p0, "mtk-cam-mode"

    .line 241
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "cap-mode"

    .line 249
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 8

    .line 130
    invoke-static {}, Lcom/android/camera/Device;->getContinuousShotCallbackClass()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/android/camera/Device;->getContinuousShotCallbackSetter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MTKCameraProxy"

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 133
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient continuous shot callback info[class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " setter:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContinuousShotCallback"

    const-string v1, "setContinuousShotCallback"

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    .line 141
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.hardware.Camera$"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v3, v7, v5

    new-instance v3, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;

    invoke-direct {v3, p0, p2}, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;-><init>(Lcom/android/camera/hardware/MTKCameraProxy;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    invoke-static {v6, v7, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    :cond_2
    new-array p0, v4, [Ljava/lang/Class;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, p0, v5

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Landroid/hardware/Camera$"

    .line 148
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";)V"

    .line 150
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v1, p2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 153
    aget-object p0, p0, v5

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v5

    invoke-virtual {p2, p0, p1, v0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ClassNotFoundException"

    .line 158
    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "IllegalArgumentException"

    .line 156
    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "contrast"

    .line 233
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1

    .line 554
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bgservice enable:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MTKCameraProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "bgservice"

    .line 555
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    const-string p0, "off"

    .line 303
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "fb-enlarge-eye"

    if-eqz p0, :cond_0

    .line 304
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setExposureTime(Landroid/hardware/Camera$Parameters;I)V
    .locals 1

    .line 499
    invoke-static {}, Lcom/android/camera/Device;->useMicrosecondExposureTime()Z

    move-result p0

    if-eqz p0, :cond_0

    div-int/lit16 p2, p2, 0x3e8

    .line 500
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exposure-time:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MTKCameraProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_1

    const-string p0, "on"

    goto :goto_0

    :cond_1
    const-string p0, "off"

    :goto_0
    const-string v0, "manual-cap"

    .line 501
    invoke-virtual {p1, v0, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "exposure-time"

    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "fb-extreme-beauty"

    .line 327
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFacePosition(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "fb-face-pos"

    .line 291
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTKCameraProxy"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const-string v0, "manual"

    .line 540
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 541
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/MTKCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    :cond_0
    return-void
.end method

.method public setFocusPosition(Landroid/hardware/Camera$Parameters;I)V
    .locals 1

    mul-int/lit16 p2, p2, 0x400

    .line 547
    div-int/lit16 p2, p2, 0x3e8

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFocusPosition pos:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MTKCameraProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "afeng-pos"

    .line 549
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "iso-speed"

    .line 216
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParallelProcessFileInfo(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "callback-client-filepath"

    .line 559
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "callback-client-filename"

    .line 560
    invoke-virtual {p1, p0, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setParallelProcessFileInfo folder:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " title:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MTKCameraProxy"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "snapshot-picture-flip"

    .line 253
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "saturation"

    .line 229
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "edge"

    .line 237
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    const-string p0, "off"

    .line 319
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "fb-skin-color"

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    const-string p0, "off"

    .line 311
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "fb-slim-face"

    if-eqz p0, :cond_0

    .line 312
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "slow-motion"

    .line 331
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSmoothLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "fb-smooth-level"

    .line 287
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 6

    const-string p0, "MTKCameraProxy"

    const-string v0, "setStereoDataCallback"

    .line 373
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "setStereoDataCallback 366"

    .line 376
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const-string v0, "android.hardware.Camera$StereoCameraDataCallback"

    .line 379
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v0, v4, v2

    new-instance v0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;

    const-class v5, Lcom/android/camera/hardware/MTKCameraProxy$StereoDataCallback;

    invoke-direct {v0, p2, v5}, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v3, v4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    new-array p2, v1, [Ljava/lang/Class;

    .line 383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, p2, v2

    const-string v3, "setStereoDataCallback 375"

    .line 385
    invoke-static {p0, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "setStereoCameraDataCallback"

    const-string v4, "(Landroid/hardware/Camera$StereoCameraDataCallback;)V"

    .line 386
    invoke-static {p2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    const-string v4, "setStereoDataCallback 378"

    .line 388
    invoke-static {p0, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const-string v4, "setStereoDataCallback 380"

    .line 390
    invoke-static {p0, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    aget-object p2, p2, v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, p2, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string p2, "ClassNotFoundException"

    .line 396
    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string p2, "IllegalArgumentException"

    .line 394
    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 6

    const-string p0, "MTKCameraProxy"

    const-string v0, "setStereoWarningCallback"

    .line 406
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "android.hardware.Camera$StereoCameraWarningCallback"

    .line 411
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v0, v4, v2

    new-instance v0, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;

    const-class v5, Lcom/android/camera/hardware/MTKCameraProxy$StereoWarningCallback;

    invoke-direct {v0, p2, v5}, Lcom/android/camera/hardware/MTKCameraProxy$SameNameCallbackProxy;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v3, v4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    new-array p2, v1, [Ljava/lang/Class;

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, p2, v2

    const-string v3, "setStereoCameraWarningCallback"

    const-string v4, "(Landroid/hardware/Camera$StereoCameraWarningCallback;)V"

    .line 416
    invoke-static {p2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 419
    aget-object p2, p2, v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, p2, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ClassNotFoundException"

    .line 424
    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "IllegalArgumentException"

    .line 422
    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "video-hfr"

    .line 335
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "stereo-dof-level"

    .line 354
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3

    const-string p0, "on"

    const-string v0, "off"

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "stereo-vsdof-mode"

    .line 358
    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    const-string p2, "stereo-image-refocus"

    .line 359
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "stereo-denoise-mode"

    .line 360
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V
    .locals 1

    .line 532
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "manual-wb-value="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MTKCameraProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "manual-wb-type"

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string p0, "manual-wb-value"

    .line 534
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    const-string v0, "manual"

    .line 521
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_0

    :cond_0
    const-string v0, "measure"

    .line 523
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "auto"

    .line 526
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "zsd-mode"

    .line 225
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
