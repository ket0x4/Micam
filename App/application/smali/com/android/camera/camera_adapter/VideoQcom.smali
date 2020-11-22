.class public Lcom/android/camera/camera_adapter/VideoQcom;
.super Lcom/android/camera/module/VideoModule;
.source "VideoQcom.java"


# static fields
.field private static final VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

.field private static sProxy:Lcom/android/camera/hardware/QcomCameraProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v0, :cond_0

    const-string v0, "90"

    goto :goto_0

    :cond_0
    const-string v0, "120"

    :goto_0
    sput-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    .line 25
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "I"

    const/4 v1, 0x0

    const-string v2, "android.media.CamcorderProfile"

    const-string v3, "QUALITY_HIGH_SPEED_480P"

    .line 26
    invoke-static {v2, v1, v3, v0}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 27
    sget-object v4, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/high16 v7, -0x80000000

    if-eq v3, v7, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 28
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 27
    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "QUALITY_HIGH_SPEED_720P"

    .line 30
    invoke-static {v2, v1, v3, v0}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 31
    sget-object v4, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eq v3, v7, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    .line 32
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 31
    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "QUALITY_HIGH_SPEED_1080P"

    .line 34
    invoke-static {v2, v1, v3, v0}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 35
    sget-object v1, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq v0, v7, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    .line 36
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected isShowHFRDuration()Z
    .locals 1

    .line 87
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected setVideoFlipIfNeed()V
    .locals 3

    .line 91
    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "flip-h"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "flip-v"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 105
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoFlip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getVideoFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoQcom"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 5

    .line 43
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 44
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 45
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_X5:Z

    if-eqz v1, :cond_1

    :cond_0
    array-length v1, v0

    if-lez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v3, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 53
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_3

    .line 54
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 55
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "on"

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 54
    :goto_1
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 62
    iget v3, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "nv12-venus"

    goto :goto_2

    :cond_4
    const-string v3, "yuv420sp"

    :goto_2
    const-string v4, "preview-format"

    .line 61
    invoke-virtual {v0, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v3, "slow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoHighFrame()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mHighSpeedCaptureRate:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    .line 69
    :goto_3
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 70
    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighFrameRate value ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VideoQcom"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 77
    :cond_8
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 78
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "denoise-on"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 81
    :cond_9
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method
