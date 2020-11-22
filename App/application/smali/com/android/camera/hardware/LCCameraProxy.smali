.class public Lcom/android/camera/hardware/LCCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "LCCameraProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "snapshot-picture-flip"

    .line 107
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

    const-string p0, "metering-values"

    .line 125
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 126
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

    const-string p0, "iso-mode-values"

    .line 65
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getZslSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "zsl-supported"

    .line 83
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-array p0, p0, [Ljava/lang/Class;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p0, v0

    const-string v1, "needFlash"

    const-string v2, "()Z"

    .line 37
    invoke-static {p0, v1, v2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    aget-object p0, p0, v0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v2}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "LCCameraProxy"

    const-string p1, "isNeedFlashOn IllegalArgumentException"

    .line 42
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public isPreviewEnabled(Landroid/hardware/Camera;)Z
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-array p0, p0, [Ljava/lang/Class;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p0, v0

    const-string v1, "previewEnabled"

    const-string v2, "()Z"

    .line 52
    invoke-static {p0, v1, v2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    aget-object p0, p0, v0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v2}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "LCCameraProxy"

    const-string p1, "isPreviewEnabled IllegalArgumentException"

    .line 57
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "zsl"

    .line 121
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "metering"

    .line 111
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    const-string p0, "zsl-num"

    .line 99
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "contrast"

    .line 91
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "iso"

    .line 70
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "snapshot-picture-flip"

    .line 103
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "saturation"

    .line 87
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "sharpness"

    .line 95
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "zsl"

    .line 79
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
