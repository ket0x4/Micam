.class public Lcom/android/camera/camera_adapter/CameraLC;
.super Lcom/android/camera/module/CameraModule;
.source "CameraLC.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/LCCameraProxy;


# instance fields
.field private mIsLongShotMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/LCCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return-void
.end method

.method private getZSL()Z
    .locals 2

    .line 145
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 146
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 147
    invoke-virtual {v0, p0}, Lcom/android/camera/hardware/LCCameraProxy;->getZslSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lcUpdateCameraParametersPreference()V
    .locals 6

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setBeautyParams()V

    .line 27
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAgeDetection()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "on"

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v0

    .line 29
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowGenderAndAge(Z)V

    .line 30
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setShowGenderAndAge="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 34
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v3, v1

    :cond_0
    const-string v4, "xiaomi-preview-rotation"

    .line 33
    invoke-virtual {v0, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 39
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 40
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_3
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "off"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_0
    const v0, 0x7f0f029e

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_qc_camera_iso_key"

    .line 47
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v2, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v2, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saturation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v2, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contrast="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v2, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sharpness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v2, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 71
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->getZSL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 72
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 73
    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-eqz v3, :cond_5

    const-string v3, "true"

    goto :goto_1

    :cond_5
    const-string v3, "false"

    .line 72
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/hardware/LCCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 75
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-nez v0, :cond_6

    .line 76
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 77
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v2, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_2

    .line 78
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v0, :cond_7

    .line 79
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 80
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_2

    .line 82
    :cond_7
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    .line 84
    :goto_2
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longShotMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isLongShotMode()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontMirror()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 166
    sget-object p0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    sget-object p0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 170
    :goto_0
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pictureFlip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 1

    .line 88
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_0

    sget p1, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->applyMultiShutParameters(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method protected isLongShotMode()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return p0
.end method

.method protected isSupportSceneMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isZeroShotMode()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    return p0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "on"

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needSetupPreview()Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->isPreviewEnable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_qc_camera_iso_key"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f0f029e

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/hardware/LCCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected prepareCapture()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 99
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setTimeWatermarkIfNeed()V

    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    .line 115
    sget-object p0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 117
    sget-object p0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/LCCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .line 160
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 161
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->lcUpdateCameraParametersPreference()V

    return-void
.end method
