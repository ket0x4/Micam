.class public Lcom/android/camera/camera_adapter/VideoMTK;
.super Lcom/android/camera/module/VideoModule;
.source "VideoMTK.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/MTKCameraProxy;


# instance fields
.field private final mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 30
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/MTKCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    .line 34
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.mediatek.camcorder.CamcorderProfileEx"

    const-string v1, "I"

    const/4 v2, 0x0

    const-string v3, "SLOW_MOTION_480P_120FPS"

    .line 36
    invoke-static {v0, v2, v3, v1}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "android.media.CamcorderProfile"

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_0

    const-string v3, "QUALITY_HIGH_SPEED_480P"

    .line 39
    invoke-static {v4, v2, v3, v1}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 41
    :cond_0
    sget-object v6, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v7

    .line 42
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 41
    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "SLOW_MOTION_HD_120FPS"

    .line 45
    invoke-static {v0, v2, v3, v1}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_2

    const-string v0, "QUALITY_HIGH_SPEED_720P"

    .line 48
    invoke-static {v4, v2, v0, v1}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50
    :cond_2
    sget-object v1, Lcom/android/camera/module/VideoModule;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq v0, v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 51
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    .line 31
    new-instance v0, Lcom/android/camera/stereo/WarningCallback;

    invoke-direct {v0}, Lcom/android/camera/stereo/WarningCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    return-void
.end method

.method private setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 5

    const-string p0, "android.media.MediaRecorder"

    const-string v0, "VideoMTK"

    .line 171
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setParametersExtra"

    const-string v3, "(Ljava/lang/String;)V"

    .line 172
    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 173
    invoke-virtual {v2, v1, p1, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    const-string p1, "Illegal argument"

    .line 179
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_1
    const-string p1, "no method setParametersExtra"

    .line 177
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 175
    :goto_2
    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 2

    .line 220
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 223
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    return-void
.end method

.method protected configMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 1

    .line 111
    invoke-static {}, Lcom/android/camera/Device;->useMtkLegacyHfr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->configMediaRecorder(Landroid/media/MediaRecorder;)V

    :cond_0
    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 8

    const-string v0, "com.mediatek.camcorder.CamcorderProfileEx"

    const-string v1, "VideoMTK"

    .line 92
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getProfile"

    const-string v4, "(II)Landroid/media/CamcorderProfile;"

    .line 93
    invoke-static {v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v4, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :goto_0
    const-string v2, "Illegal argument"

    .line 100
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_1
    const-string v2, "no method getProfile"

    .line 98
    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 96
    :goto_2
    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method protected getNormalVideoFrameRate()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method protected isProfileExist(ILjava/lang/Integer;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isShowHFRDuration()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onCameraOpened()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    .line 208
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/stereo/WarningCallback;->setActivity(Landroid/app/Activity;)V

    .line 210
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_camera_stereo_key"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lcom/android/camera/CameraSettings;->getStereoDofLevel()Ljava/lang/String;

    move-result-object p1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vfLevel value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMTK"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    const/4 p1, 0x3

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->updateStatusBar(I)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 6

    const-string v0, "com.mediatek.media.MediaRecorderEx"

    const-string v1, "VideoMTK"

    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 119
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V

    return-void

    .line 124
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "pause"

    const-string v3, "(Landroid/media/MediaRecorder;)V"

    .line 125
    invoke-static {p0, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 126
    invoke-virtual {v2, p0, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    const-string p1, "Illegal argument"

    .line 132
    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_1
    const-string p1, "no method pause"

    .line 130
    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 128
    :goto_2
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public prepareOpenCamera(II)V
    .locals 0

    .line 184
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-nez p0, :cond_0

    .line 185
    sget-object p0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V

    :cond_0
    return-void
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .locals 2

    .line 159
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media-param-slowmotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/VideoMTK;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setVideoFlipIfNeed()V
    .locals 4

    .line 227
    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    const-string v2, "1"

    if-eq v0, v1, :cond_0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "flip-h"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "flip-v"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 241
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoFlip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getVideoFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoMTK"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected startRecordVideo()Z
    .locals 3

    .line 137
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    .line 138
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v2, "media-param-audio-stop-first=1"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/camera_adapter/VideoMTK;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method protected updateVideoParametersPreference()V
    .locals 4

    .line 57
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 58
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 59
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    const-string v1, "slow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "on"

    const-string v2, "off"

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 72
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    const/16 v1, 0x1388

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x5dc0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 75
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 76
    invoke-static {}, Lcom/android/camera/CameraSettings;->getStereoDofLevel()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vfLevel value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMTK"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_2
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 81
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v0, 0x7530

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_3
    :goto_1
    return-void
.end method
