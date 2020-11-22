.class public Lcom/android/camera/camera_adapter/CameraNv;
.super Lcom/android/camera/module/CameraModule;
.source "CameraNv.java"


# static fields
.field private static RAW_META_DATA:I = 0xf4240

.field private static sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNSLBurstCount:I

.field private mPreviewPausedDisabled:Z

.field private mRawBuffer:[B

.field private mRawBufferSize:I

.field private mSetAohdrLater:Z

.field private mSkipSetNSLAfterMultiShot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const-string v0, "CameraNv"

    .line 16
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    return-void
.end method

.method private allocRawBufferIfNeeded()V
    .locals 2

    .line 261
    sget v0, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    const v1, 0x190aa00

    add-int/2addr v0, v1

    .line 262
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    if-ge v1, v0, :cond_1

    .line 264
    :cond_0
    :try_start_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 265
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 267
    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    const/4 v1, 0x0

    .line 268
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raw OutOfMemoryError: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraNv"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private getNSLBuffersNeededCount()I
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    return v2

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getZSL()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0f03a0

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "on"

    .line 307
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 308
    invoke-virtual {v1, v4}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 309
    invoke-virtual {v1, v4}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0f02b1

    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "auto"

    .line 310
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3
.end method

.method private getPreviewPausedDisabled()Z
    .locals 4

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    .line 280
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 281
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f02b1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewPausedDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 285
    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 286
    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 287
    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraNv"

    .line 284
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    return p0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 0

    const-string p0, "on"

    return-object p0
.end method

.method private updateNvCameraParametersPreference()V
    .locals 7

    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    const/16 v2, -0x64

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    .line 33
    sget-object v3, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    .line 35
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saturation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraNv"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v4, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contrast="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_1

    if-gt v0, v1, :cond_1

    .line 46
    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setEdgeEnhancement(Landroid/hardware/Camera$Parameters;I)V

    .line 48
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sharpness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAutoRotation(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 51
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAutoRotation(Landroid/hardware/Camera$Parameters;Z)V

    :cond_2
    const v0, 0x7f0f029e

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_qc_camera_iso_key"

    .line 56
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const v4, 0x7f030024

    .line 58
    invoke-static {v2, v4}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid iso "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 62
    :goto_0
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pictureISO="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f0252

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_qc_camera_exposuretime_key"

    .line 66
    invoke-virtual {p0, v2, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 69
    sget-object v4, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exposureTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    .line 75
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    if-nez v2, :cond_7

    .line 76
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    const-string v2, "handNight=true"

    .line 78
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 79
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 80
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v5, 0xd

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    const-string v2, "rawData=true"

    .line 81
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->allocRawBufferIfNeeded()V

    goto :goto_1

    .line 83
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 84
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 87
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    const-string v2, "aoHDR=true"

    .line 88
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 91
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    const-string v2, "morphoHDR=true"

    .line 92
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    :cond_7
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 101
    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 102
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 103
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 105
    :cond_8
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 106
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    .line 107
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 108
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    .line 111
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 112
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 114
    :cond_9
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    .line 117
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isMultiSnapStopRequested()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 118
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    .line 122
    :cond_b
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    .line 123
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getNSLBuffersNeededCount()I

    move-result v2

    .line 124
    iget-boolean v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    const-string v5, "normal"

    if-nez v4, :cond_d

    iget v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eq v4, v2, :cond_d

    .line 125
    sget-object v4, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v6, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    if-nez v2, :cond_c

    .line 127
    sget-object v4, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v6, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 128
    sget-object v4, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v6, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 129
    sget-object v4, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v6, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 131
    :cond_c
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 132
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 133
    sget-object v4, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v6}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NSLNumBuffers="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_d
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v4, :cond_f

    .line 139
    iget v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v4, :cond_e

    if-lez v2, :cond_e

    .line 141
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "shot2shot"

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto :goto_2

    .line 143
    :cond_e
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 145
    :goto_2
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 146
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v5, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_4

    .line 148
    :cond_f
    iget-boolean v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v4, :cond_10

    iget v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v4, :cond_10

    if-lez v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 151
    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 152
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 153
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_3

    .line 155
    :cond_10
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 156
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 158
    :goto_3
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 161
    :goto_4
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    const-string v4, "off"

    if-eqz v2, :cond_13

    .line 164
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 165
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 166
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 167
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_5

    .line 170
    :cond_11
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 171
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    .line 172
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 176
    :cond_12
    :goto_5
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 181
    :cond_13
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getPreviewPausedDisabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;Z)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previewDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v0

    if-nez v0, :cond_15

    .line 185
    :cond_14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 186
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_6

    .line 188
    :cond_15
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 190
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeWatermark="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setBeautyParams()V

    .line 195
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v0

    .line 196
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowGenderAndAge(Z)V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShowGenderAndAge="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string p0, "setMultiFaceBeautify=on"

    .line 200
    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected isLongShotMode()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    return p0
.end method

.method protected isZeroShotMode()Z
    .locals 0

    .line 237
    iget p0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "on"

    .line 244
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
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isMultiSnapStopRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v1, :cond_1

    const-string v1, "auto"

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    const-string p0, "on"

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onPause()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    .line 326
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onPause()V

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_focus_position_key"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object p1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    .line 226
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_qc_manual_whitebalance_k_value_key"

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    sget-object p1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setColorTemperature(Landroid/hardware/Camera$Parameters;I)V

    .line 229
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected prepareCapture()V
    .locals 3

    .line 205
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 206
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "horizontal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 211
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jpegHorizontalFlip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraNv"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .line 215
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 216
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->updateNvCameraParametersPreference()V

    return-void
.end method
