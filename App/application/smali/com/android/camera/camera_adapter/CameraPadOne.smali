.class public Lcom/android/camera/camera_adapter/CameraPadOne;
.super Lcom/android/camera/module/CameraModule;
.source "CameraPadOne.java"


# instance fields
.field private final KEY_AUTO_ROTATE:Ljava/lang/String;

.field private final KEY_FLIP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const-string v0, "Camera"

    .line 16
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->TAG:Ljava/lang/String;

    const-string v0, "jpeg-auto-rotate"

    .line 17
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_AUTO_ROTATE:Ljava/lang/String;

    const-string v0, "jpeg-flip"

    .line 18
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_FLIP:Ljava/lang/String;

    return-void
.end method

.method public static getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "pref_camera_face_beauty_key"

    if-eqz p1, :cond_0

    .line 66
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method private updateCameraParametersPreference(Landroid/hardware/Camera$Parameters;)V
    .locals 6

    const-string v0, "true"

    const-string v1, "jpeg-auto-rotate"

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v1

    const-string v2, "on"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const-string v3, "off"

    invoke-virtual {v1, p1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 29
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTimeWatermark="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v3, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Camera"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    sget-object v4, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v4, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStillBeautify="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v1

    .line 36
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v4, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowGenderAndAge(Z)V

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setShowGenderAndAge="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string v1, "setMultiFaceBeautify=on"

    .line 40
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontMirror()Z

    move-result p0

    const-string v1, "jpeg-flip"

    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "false"

    .line 45
    invoke-virtual {p1, v1, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jpegHorizontalFlip="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected isZeroShotMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 53
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraPadOne;->updateCameraParametersPreference(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
