.class public Lcom/android/camera/camera_adapter/CameraQcom;
.super Lcom/android/camera/module/CameraModule;
.source "CameraQcom.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraQcom"

.field private static sProxy:Lcom/android/camera/hardware/QcomCameraProxy;


# instance fields
.field protected mEnableMetaData:Z

.field private mIsLongShotMode:Z

.field private mParallelProcessingTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParallelProcessingTitle:Ljava/lang/String;

    return-void
.end method

.method private couldEnableChromaFlash()Z
    .locals 2

    .line 352
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->getUbiFocus(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "af-bracket-on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f029e

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_iso_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0252

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_exposuretime_key"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 4

    .line 608
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    const-string v1, "on"

    if-eqz v0, :cond_0

    return-object v1

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontBokehOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 616
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v0

    const-string v2, "off"

    if-eqz v0, :cond_3

    return-object v2

    .line 624
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDefaultManualExposure()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v2

    .line 628
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isFrontRemosicSensor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 629
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 630
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 631
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v2

    .line 637
    :cond_5
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v2

    .line 641
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 642
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/hardware/QcomCameraProxy;->isZSLHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-nez p0, :cond_8

    :cond_7
    return-object v2

    :cond_8
    return-object v1
.end method

.method private isSupportParallelProcess()Z
    .locals 3

    .line 486
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 493
    :cond_1
    sget-boolean v0, Lcom/android/camera/Device;->IS_C8:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 498
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_4

    .line 500
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 501
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    if-nez v0, :cond_4

    .line 502
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 503
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 507
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/hardware/QcomCameraProxy;->getMorphoHHT(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    .line 512
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_8

    .line 513
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-nez v0, :cond_8

    .line 514
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    if-nez v0, :cond_8

    .line 515
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 519
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 520
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-nez v0, :cond_7

    .line 521
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 522
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontBokehOn()Z

    move-result p0

    if-nez p0, :cond_7

    .line 523
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result p0

    if-nez p0, :cond_7

    .line 524
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    return v1
.end method

.method private qcomUpdateCameraParametersPreference()V
    .locals 10

    .line 44
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto/16 :goto_13

    .line 47
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportFrontFlashEnhance()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v3, "disable meta data"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    goto :goto_0

    .line 54
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    goto :goto_0

    .line 57
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    .line 59
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f0252

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_qc_camera_exposuretime_key"

    .line 60
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 63
    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    .line 62
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_4

    .line 65
    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    .line 66
    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exposureTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    div-int/lit16 v0, v0, 0x3e8

    :cond_3
    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_4

    .line 72
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 78
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    const-string v3, "on"

    const-string v4, "off"

    if-eqz v0, :cond_5

    .line 79
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->setPortraitMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v5, "portrait mode on"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    :cond_5
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setPortraitMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v5, "portrait mode off"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFaceInfoWaterMark()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v6}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v6

    if-nez v6, :cond_7

    .line 89
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v6, v1

    goto :goto_2

    :cond_7
    move v6, v2

    .line 88
    :goto_2
    invoke-virtual {v0, v5, v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    .line 93
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setBeautyParams()V

    .line 96
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAgeDetection()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 97
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v0

    .line 98
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v5, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowGenderAndAge(Z)V

    .line 99
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setShowGenderAndAge="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 104
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 105
    iget v5, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b

    move v5, v2

    :cond_b
    const-string v6, "xiaomi-preview-rotation"

    .line 104
    invoke-virtual {v0, v6, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 109
    :cond_c
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 110
    invoke-static {}, Lcom/android/camera/Device;->isSupportBurstDenoise()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_d

    const-string v0, "denoise-off"

    goto :goto_3

    :cond_d
    const-string v0, "denoise-on"

    .line 113
    :goto_3
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "denoise="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 117
    :cond_e
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_10

    const v0, 0x7f0f029e

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "pref_qc_camera_iso_key"

    .line 119
    invoke-virtual {p0, v5, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 122
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_4

    .line 124
    :cond_f
    invoke-static {}, Lcom/android/camera/Device;->isSupportedContinousIsoMode()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 126
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getMinIso(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    .line 127
    sget-object v6, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxIso(Landroid/hardware/Camera$Parameters;)I

    move-result v6

    .line 128
    sget-object v7, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "minIso: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; maxIso: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; continousIso: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v0, v6, :cond_10

    if-lt v0, v5, :cond_10

    .line 130
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "manual"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/hardware/QcomCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 131
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setContinuousIso(Landroid/hardware/Camera$Parameters;I)V

    .line 138
    :cond_10
    :goto_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxSaturation(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_11

    .line 141
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saturation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    .line 146
    :cond_11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxContrast(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_12

    .line 149
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contrast="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;I)V

    .line 154
    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxSharpness(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_13

    .line 157
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sharpness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;I)V

    .line 161
    :cond_13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v5, 0x7f0f0364

    .line 163
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_touchafaec_key"

    .line 161
    invoke-virtual {v0, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 165
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touchAfAec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 170
    :cond_14
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 171
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautyRank(Landroid/hardware/Camera$Parameters;Z)V

    .line 174
    :cond_15
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAnalyzeAgeGender(Landroid/hardware/Camera$Parameters;Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setPictureFlipIfNeed()V

    .line 178
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_16

    .line 179
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_5

    .line 181
    :cond_16
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 187
    :goto_5
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 188
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "ae-bracket-hdr"

    const-string v6, "Off"

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_17
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->disableHandNight(Landroid/hardware/Camera$Parameters;)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->disableSuperResolution(Landroid/hardware/Camera$Parameters;)V

    .line 193
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    .line 195
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "af-bracket-off"

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->setUbiFocus(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setAoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "false"

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xac

    if-eq v0, v5, :cond_1d

    .line 202
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 203
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->enableHandNight(Landroid/hardware/Camera$Parameters;)V

    .line 204
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v5, "handNight=true"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 205
    :cond_18
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 206
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v5, "rawData=true"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 207
    :cond_19
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 208
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->setAoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v5, "aoHDR=true"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 210
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 211
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v5, "morphoHDR=true"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 213
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 214
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "af-bracket-on"

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->setUbiFocus(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v5, "ubiFocus=true"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 216
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 217
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->enableSuperResolution(Landroid/hardware/Camera$Parameters;)V

    .line 218
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v5, "super-resolution=true"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1d
    :goto_6
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getZSL()Ljava/lang/String;

    move-result-object v0

    .line 223
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZSL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 225
    invoke-static {}, Lcom/android/camera/Device;->shouldRestartPreviewAfterZslSwitch()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_7

    :cond_1e
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 228
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_9

    .line 230
    :cond_1f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 231
    invoke-static {}, Lcom/android/camera/Device;->shouldRestartPreviewAfterZslSwitch()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_8

    :cond_20
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 233
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 234
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 238
    :cond_21
    :goto_9
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    const-string v5, "num-snaps-per-shutter"

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-nez v0, :cond_24

    .line 239
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 240
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v0, :cond_22

    goto :goto_a

    .line 243
    :cond_22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto :goto_b

    .line 241
    :cond_23
    :goto_a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v6, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 246
    :goto_b
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setTimeWatermarkIfNeed()V

    goto :goto_d

    .line 247
    :cond_24
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-eqz v0, :cond_27

    .line 248
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 249
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v0, :cond_26

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v0, :cond_25

    goto :goto_c

    .line 252
    :cond_25
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto :goto_d

    .line 250
    :cond_26
    :goto_c
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 255
    :cond_27
    :goto_d
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "longShotMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isLongShotMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-eqz v5, :cond_28

    .line 259
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "torch"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v5, v1

    goto :goto_e

    :cond_28
    move v5, v2

    .line 258
    :goto_e
    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 262
    invoke-static {}, Lcom/android/camera/Device;->isSupportedChromaFlash()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 263
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->couldEnableChromaFlash()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 264
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050004

    .line 267
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v6

    .line 266
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const-string v6, "pref_auto_chroma_flash_key"

    .line 264
    invoke-virtual {v0, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "chroma-flash-on"

    goto :goto_f

    :cond_29
    const-string v0, "chroma-flash-off"

    .line 271
    :goto_f
    sget-object v5, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setChromaFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 273
    :cond_2a
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chromaFlash="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/QcomCameraProxy;->getChromaFlash(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedMetadata()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 278
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 279
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 280
    :cond_2b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x5

    goto :goto_10

    :cond_2c
    move v0, v2

    .line 285
    :goto_10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v5

    invoke-static {v5}, Lcom/android/camera/Device;->isSupportedASD(Z)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 286
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mEnableMetaData:Z

    if-eqz v5, :cond_2d

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-nez v5, :cond_2d

    iget-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v5, :cond_2d

    if-nez v0, :cond_2d

    .line 290
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 291
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 292
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 293
    invoke-static {}, Lcom/android/camera/Device;->isPortraitModeSupportAiScene()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_11

    :cond_2d
    move v1, v2

    .line 294
    :cond_2e
    :goto_11
    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asdEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2f

    goto :goto_12

    :cond_2f
    move-object v3, v4

    :goto_12
    const-string v4, "scene-detect"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_30

    const/4 v0, 0x3

    .line 300
    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setMetaCallback(I)V

    .line 303
    :cond_31
    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 304
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupportParallelProcess()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V

    .line 307
    :cond_32
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryEnableFrontHhtEnhance()V

    :cond_33
    :goto_13
    return-void
.end method

.method private setPictureFlipIfNeed()V
    .locals 3

    .line 434
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "flip-h"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "flip-v"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_1
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 444
    :goto_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pictureFlip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/QcomCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 2

    .line 479
    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 480
    sget-object p1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V

    .line 481
    sget-object p1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setParallelProcessFilePath(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 3

    .line 312
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 314
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    .line 315
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longShotMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isLongShotMode()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected disableHandNight(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 701
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v0, "disableHandNight"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 703
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 704
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method protected disableSuperResolution(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 718
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setSREnabled(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method

.method protected enableHandNight(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 708
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v1, "enableHandNight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSceneMotion()Z

    move-result p0

    const-string v0, "true"

    if-eqz p0, :cond_0

    .line 710
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_0
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected enableSuperResolution(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 723
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setSREnabled(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 2

    .line 565
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontMuxCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 566
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 569
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getSupportedPortraitPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 572
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    .line 574
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getMaxPictureSizeSafely(Ljava/util/List;)I

    move-result p0

    .line 572
    invoke-static {v1, v0, p0}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 576
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object p0

    return-object p0
.end method

.method protected getBurstDelayTime()I
    .locals 0

    .line 656
    sget-boolean p0, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x12c

    return p0

    :cond_0
    const/16 p0, 0xc8

    return p0
.end method

.method protected getParallelProcessingFileTitle()Ljava/lang/String;
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParallelProcessingTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected getSupportedPortraitPictureSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedPortraitPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 582
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v0, "getSupportedPortraitPictureSizes return null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 585
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    new-instance v1, Lcom/android/camera/camera_adapter/CameraQcom$1;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/CameraQcom$1;-><init>(Lcom/android/camera/camera_adapter/CameraQcom;)V

    .line 593
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getPortraitZoom()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 596
    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 599
    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    return-object v0
.end method

.method protected isAutoRestartInNonZSL()Z
    .locals 1

    .line 697
    invoke-static {}, Lcom/android/camera/Device;->isFrontRemosicSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isLongShotMode()Z
    .locals 0

    .line 413
    iget-boolean p0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    return p0
.end method

.method protected isParallelProcessing()Z
    .locals 1

    .line 529
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 532
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/hardware/QcomCameraProxy;->isParallelProcess(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isSupportSceneMode()Z
    .locals 0

    .line 386
    sget-boolean p0, Lcom/android/camera/Device;->IS_HONGMI:Z

    return p0
.end method

.method protected isZeroShotMode()Z
    .locals 0

    .line 400
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    return p0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 427
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    .line 428
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "auto"

    .line 429
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 430
    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected needSetupPreview()Z
    .locals 3

    .line 391
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "persist.camera.feature.restart"

    .line 392
    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 393
    invoke-virtual {v0, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->getInternalPreviewSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "picture-format"

    .line 395
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jpeg"

    .line 394
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onCameraStartPreview()V
    .locals 2

    .line 543
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 546
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontBokehOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 553
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackBokehOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_3

    .line 555
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 557
    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 665
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onResume()V

    .line 666
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    .line 667
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v0

    .line 666
    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->setEdgeTouchEnabled(Z)V

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_qc_manual_whitebalance_k_value_key"

    .line 377
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    sget-object p1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V

    .line 379
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 381
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected prepareCapture()V
    .locals 2

    .line 449
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 450
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setPictureFlipIfNeed()V

    .line 451
    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 455
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setBeautyParams()V

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setTimeWatermarkIfNeed()V

    .line 459
    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->setParallelProcessPath()V

    :cond_2
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    .line 405
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 406
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 407
    sget-object p0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/QcomCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setBeautyParams()V
    .locals 8

    .line 672
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_1

    .line 673
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 677
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v2

    const-string v3, "pref_beautify_skin_color_ratio_key"

    const/4 v4, 0x0

    .line 678
    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    invoke-static {v3, v5, v7}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v3

    shl-int/lit8 v3, v3, 0x1c

    or-int/2addr v1, v3

    const-string v3, "pref_beautify_slim_face_ratio_key"

    .line 679
    aget v5, v2, v4

    aget v7, v2, v6

    invoke-static {v3, v5, v7}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v1, v3

    const-string v3, "pref_beautify_skin_smooth_ratio_key"

    .line 680
    aget v5, v2, v4

    aget v7, v2, v6

    invoke-static {v3, v5, v7}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const-string v3, "pref_beautify_enlarge_eye_ratio_key"

    .line 681
    aget v4, v2, v4

    aget v2, v2, v6

    invoke-static {v3, v4, v2}, Lcom/android/camera/CameraSettings;->getBeautifyDetailValue(Ljava/lang/String;II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v1, v2

    .line 682
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v2, "check beautify detail values in strings.xml of aries"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 688
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStillBeautify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 690
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->setBeautyParams()V

    :goto_1
    return-void
.end method

.method protected setManualParameters()V
    .locals 6

    .line 321
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const v0, 0x7f0f0252

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_exposuretime_key"

    .line 323
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 326
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    .line 325
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 328
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    .line 329
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exposureTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f0f029e

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_iso_key"

    .line 333
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedContinousIsoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 340
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->getMinIso(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    .line 341
    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxIso(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 342
    sget-object v3, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minIso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; maxIso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; continousIso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v0, v2, :cond_2

    if-lt v0, v1, :cond_2

    .line 344
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "manual"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 345
    sget-object v1, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setContinuousIso(Landroid/hardware/Camera$Parameters;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setParallelProcessPath()V
    .locals 5

    .line 465
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupportParallelProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->createJpegName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable parallel process path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v2, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setParallelProcessFilePath(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 470
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParallelProcessingTitle:Ljava/lang/String;

    goto :goto_0

    .line 472
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->TAG:Ljava/lang/String;

    const-string v1, "disable parallel process"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget-object v0, Lcom/android/camera/camera_adapter/CameraQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setParallelProcessFilePath(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParallelProcessingTitle:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected updateCameraParametersInitialize()V
    .locals 3

    .line 359
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    .line 360
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 365
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/camera/Device;->IS_X5:Z

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 366
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_2
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .line 418
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 419
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->qcomUpdateCameraParametersPreference()V

    return-void
.end method
