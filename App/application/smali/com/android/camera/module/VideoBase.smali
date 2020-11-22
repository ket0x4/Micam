.class public abstract Lcom/android/camera/module/VideoBase;
.super Lcom/android/camera/module/BaseModule;
.source "VideoBase.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;
.implements Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoBase$StereoSwitchThread;,
        Lcom/android/camera/module/VideoBase$MainHandler;
    }
.end annotation


# static fields
.field private static HOLD_WHEN_SAVING_VIDEO:Z = false

.field private static final TAG:Ljava/lang/String; = "VideoBase"


# instance fields
.field isSmartShutterButtonEnable:Z

.field private m3ALocked:Z

.field mAudioManager:Landroid/media/AudioManager;

.field private mContinuousFocusSupported:Z

.field protected mCurrentVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

.field mCurrentVideoFilename:Ljava/lang/String;

.field mCurrentVideoUri:Landroid/net/Uri;

.field mDesiredPreviewHeight:I

.field mDesiredPreviewWidth:I

.field volatile mFaceDetectionStarted:Z

.field mFocusAreaSupported:Z

.field mFocusManager:Lcom/android/camera/FocusManagerSimple;

.field public final mHandler:Landroid/os/Handler;

.field mInStartingFocusRecording:Z

.field mIsFromStop:Z

.field mIsTouchFocused:Z

.field protected mIsVideoCaptureIntent:Z

.field mLastBackPressedTime:J

.field volatile mMediaRecorderRecording:Z

.field mMeteringAreaSupported:Z

.field mOnResumeTime:J

.field mOrientationCompensationAtRecordStart:I

.field private mOriginalMusicVolume:I

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPreviewing:Z

.field protected mRecordingStartTime:J

.field mRequestStartTime:J

.field mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field mSnapshotInProgress:Z

.field mStereoSwitchThread:Lcom/android/camera/module/VideoBase$StereoSwitchThread;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTouchFocusStartingTime:J

.field protected mVideoDocumentFile:Landroid/support/v4/provider/DocumentFile;

.field mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field protected mVideoFilename:Ljava/lang/String;

.field mVideoFocusMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFaceDetectionStarted:Z

    .line 101
    new-instance v1, Lcom/android/camera/module/VideoBase$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoBase$MainHandler;-><init>(Lcom/android/camera/module/VideoBase;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->isSmartShutterButtonEnable:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mInStartingFocusRecording:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    .line 134
    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mLastBackPressedTime:J

    .line 1373
    new-instance v0, Lcom/android/camera/module/VideoBase$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoBase$1;-><init>(Lcom/android/camera/module/VideoBase;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1385
    new-instance v0, Lcom/android/camera/module/VideoBase$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoBase$2;-><init>(Lcom/android/camera/module/VideoBase;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;->switchCamera()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/VideoBase;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;->is3ALocked()Z

    move-result p0

    return p0
.end method

.method private checkCallingState()Z
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    const/4 v0, 0x2

    .line 564
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 565
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    const v0, 0x7f0f00b9

    const v1, 0x7f0f00b7

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, ".mp4"

    return-object p0

    :cond_0
    const-string p0, ".3gp"

    return-object p0
.end method

.method public static convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "video/mp4"

    return-object p0

    :cond_0
    const-string p0, "video/3gpp"

    return-object p0
.end method

.method private is3ALocked()Z
    .locals 0

    .line 500
    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    return p0
.end method

.method private lockAEAF()V
    .locals 3

    .line 484
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "lockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 496
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    return-void

    .line 486
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockAEAF internal status error, mParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 16

    const-wide/16 v0, 0x3e8

    .line 914
    div-long v2, p0, v0

    const-wide/16 v4, 0x3c

    .line 915
    div-long v6, v2, v4

    .line 916
    div-long v8, v6, v4

    mul-long v10, v8, v4

    sub-long v10, v6, v10

    mul-long/2addr v6, v4

    sub-long v4, v2, v6

    .line 920
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    const/16 v12, 0x3a

    const/16 v13, 0x30

    const-wide/16 v14, 0xa

    if-lez v7, :cond_1

    cmp-long v7, v8, v14

    if-gez v7, :cond_0

    .line 925
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    :cond_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    cmp-long v7, v10, v14

    if-gez v7, :cond_2

    .line 934
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 936
    :cond_2
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v7, v4, v14

    if-gez v7, :cond_3

    .line 941
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 943
    :cond_3
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const/16 v4, 0x2e

    .line 947
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-long/2addr v2, v0

    sub-long v0, p0, v2

    .line 948
    div-long/2addr v0, v14

    cmp-long v2, v0, v14

    if-gez v2, :cond_4

    .line 950
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    :cond_4
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 955
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepareUIByPreviewSize()V
    .locals 2

    .line 420
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    return-void

    .line 425
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    if-eq v1, v0, :cond_1

    .line 426
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 430
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    if-ne p0, v1, :cond_2

    const p0, 0x3fe38e39

    goto :goto_0

    :cond_2
    const p0, 0x3faaaaab

    .line 429
    :goto_0
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    return-void
.end method

.method private switchCamera()V
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->switchCamera(I)V

    return-void
.end method

.method private updateParametersAfterRecording()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "videoStabilization=off"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 555
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .line 633
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method animateHold()V
    .locals 1

    .line 1038
    sget-boolean v0, Lcom/android/camera/module/VideoBase;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->getCameraRotation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    :cond_0
    return-void
.end method

.method animateSlide()V
    .locals 1

    .line 1044
    sget-boolean v0, Lcom/android/camera/module/VideoBase;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 1045
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    :cond_0
    return-void
.end method

.method protected animateSwitchCamera()V
    .locals 4

    .line 1002
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 1007
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const/4 v0, 0x0

    .line 1008
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    :goto_0
    return-void
.end method

.method protected abstract autoFocus(IIIIII)V
.end method

.method cancelAutoFocus()V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 643
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 644
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 645
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 646
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    return-void

    .line 650
    :cond_1
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    .line 657
    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateAutoFocusMoveCallback()V

    .line 662
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFocusAreaSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 663
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 665
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4

    .line 666
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 668
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_5

    .line 669
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_5
    return-void
.end method

.method public checkDisplayOrientation()V
    .locals 2

    .line 812
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 813
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 814
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerAbstract;->setDisplayOrientation(I)V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 817
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method protected cleanupEmptyFile()V
    .locals 7

    .line 1018
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1019
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1021
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no video file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iput-object v2, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    goto :goto_1

    .line 1024
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 1025
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z

    .line 1030
    :goto_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iput-object v2, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public closeCamera()V
    .locals 2

    .line 162
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    .line 165
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 169
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 171
    :cond_0
    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-void
.end method

.method closeVideoFileDescriptor()V
    .locals 3

    .line 1079
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1081
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1083
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 1085
    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method deleteCurrentVideo()V
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->deleteVideoFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 862
    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    .line 863
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 864
    invoke-static {v1, v0, v0}, Lcom/android/camera/Util;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    .line 868
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return-void
.end method

.method deleteVideoFile(Ljava/lang/String;)V
    .locals 2

    .line 872
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteVideoFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    .line 875
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method doReturnToCaller(Z)V
    .locals 2

    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 522
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 523
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 527
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 528
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected enterMutexMode()V
    .locals 4

    const/4 v0, 0x0

    .line 1050
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x0

    const-string v2, "pref_camera_whitebalance_key"

    const-string v3, "pref_camera_coloreffect_key"

    filled-new-array {v2, v1, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected exitMutexMode()V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 1061
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected getCameraRotation()I
    .locals 1

    .line 1152
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method getDuration(Ljava/lang/String;)J
    .locals 2

    .line 843
    new-instance p0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 845
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 846
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 851
    :try_start_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "RuntimeException when getDuration()"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 849
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "IllegalArgumentException when getDuration()"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    const-wide/16 p0, 0x0

    return-wide p0

    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
.end method

.method hideAlert()V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReviewViews()V

    const/4 v0, 0x1

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 909
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v0, 0x6

    .line 910
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    return-void
.end method

.method protected initializeCapabilities()V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 436
    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    const-string v3, "auto"

    .line 435
    invoke-static {v3, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFocusAreaSupported:Z

    .line 437
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mMeteringAreaSupported:Z

    .line 438
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 439
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-video"

    .line 438
    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mContinuousFocusSupported:Z

    return-void
.end method

.method protected initializeFocusManager()V
    .locals 7

    .line 443
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    .line 444
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 445
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_0

    .line 446
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 447
    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 449
    :cond_0
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 450
    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 452
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 453
    new-instance v3, Lcom/android/camera/FocusManagerSimple;

    if-nez v2, :cond_1

    .line 454
    iget v4, v1, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v4

    :goto_1
    if-nez v2, :cond_2

    .line 455
    iget v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewHeight()I

    move-result v2

    :goto_2
    iget v5, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 456
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-direct {v3, v4, v2, v5, v0}, Lcom/android/camera/FocusManagerSimple;-><init>(IIZI)V

    iput-object v3, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 458
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 459
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    return-void
.end method

.method public isCameraEnabled()Z
    .locals 0

    .line 1181
    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return p0
.end method

.method public isDoingAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isFaceBeautyOn()Z
    .locals 0

    .line 1452
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .line 1112
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mMeteringAreaSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSelectingCapturedVideo()Z
    .locals 2

    .line 577
    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 582
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const v1, 0x7f090019

    .line 583
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result p0

    const/16 v1, 0xff3

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 0

    .line 465
    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    return p0
.end method

.method public isThermalThreshold()Z
    .locals 6

    .line 1488
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1492
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1493
    iget-wide v4, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    .line 1494
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 1495
    invoke-static {}, Lcom/android/camera/Device;->getFrontCameraRecordingTimeToDisableFlash()I

    move-result p0

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 1497
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->getBackCameraRecordingTimeToDisableFlash()I

    move-result p0

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method isVideoRecording()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsFromStop:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method keepScreenOn()V
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method keepScreenOnAwhile()V
    .locals 3

    .line 798
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public notifyError(I)V
    .locals 0

    .line 1090
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->notifyError(I)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1093
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->onStopVideoRecording(Z)V

    .line 1094
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz p1, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    :cond_0
    return-void
.end method

.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 2

    .line 1187
    sget-object p2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoFocusMoving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-boolean p2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 1189
    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p2, :cond_2

    .line 1190
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 1191
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 1193
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 1191
    :goto_0
    invoke-interface {p2, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    :cond_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 9

    .line 754
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 758
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mStereoSwitchThread:Lcom/android/camera/module/VideoBase$StereoSwitchThread;

    if-eqz v0, :cond_2

    return v1

    .line 767
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_4

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 769
    iget-wide v5, p0, Lcom/android/camera/module/VideoBase;->mLastBackPressedTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xbb8

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    .line 770
    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mLastBackPressedTime:J

    .line 771
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0f041d

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 772
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 774
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoBase;->onStopVideoRecording(Z)V

    :goto_0
    return v2

    .line 779
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 783
    :cond_5
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBeautyParameterChanged()V
    .locals 2

    .line 1204
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "onBeautyParameterChanged"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void

    .line 1205
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "skip beauty parameter change"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBeautyStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onCameraOpened()V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "the module is already departed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->initializeFocusManager()V

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->initializeCapabilities()V

    .line 228
    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;->prepareUIByPreviewSize()V

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->readVideoPreferences()V

    .line 234
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoParametersPreference()V

    .line 237
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->resizeForPreviewAspectRatio()V

    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4

    .line 961
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 965
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "start to copy texture."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    goto :goto_0

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 974
    :goto_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 976
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 977
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method public onCameraSwitched()V
    .locals 1

    .line 189
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/BeautyParameters;->setIsFrontCamera(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 1445
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 1446
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/BeautyParameters;->setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V

    .line 1447
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 289
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 290
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/BeautyParameters;->setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V

    .line 291
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 830
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 832
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 833
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 838
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongPress(II)V
    .locals 1

    .line 505
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onSingleTapUp(II)V

    .line 511
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;->lockAEAF()V

    .line 514
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->performHapticFeedback(I)V

    return-void
.end method

.method protected abstract onPreviewStart()V
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 1

    .line 994
    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    if-ne p1, v0, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->animateSwitchCamera()V

    .line 996
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 0

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->doReturnToCaller(Z)V

    return-void
.end method

.method public onSettingsBack()V
    .locals 3

    .line 787
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    const/4 v1, 0x3

    .line 788
    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 790
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->restorePreferences()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 791
    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 793
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 3

    .line 243
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->isSmartShutterButtonEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mInStartingFocusRecording:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v1, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v1, :cond_2

    .line 253
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    .line 257
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_3

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->onStopVideoRecording(Z)V

    .line 260
    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;->updateParametersAfterRecording()V

    goto :goto_0

    .line 262
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;->checkCallingState()Z

    move-result v2

    if-nez v2, :cond_4

    .line 263
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return-void

    .line 266
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 267
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string p1, "storage issue, ignore the start request"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return-void

    .line 272
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const/4 p1, 0x2

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mRequestStartTime:J

    .line 278
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->canRecord()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 279
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->record()V

    goto :goto_0

    .line 281
    :cond_6
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "wait for autoFocus"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mInStartingFocusRecording:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 7

    .line 303
    sget-object p2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonFocus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x7

    if-eqz p1, :cond_0

    .line 304
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez p1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoRecording()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    .line 307
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    const/4 v1, 0x5

    .line 308
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result p1

    div-int/lit8 v2, p1, 0x2

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 309
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewHeight()I

    move-result p1

    div-int/lit8 v3, p1, 0x2

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 310
    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v4

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 311
    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v5

    const/4 v6, 0x4

    move-object v0, p0

    .line 308
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/module/VideoBase;->autoFocus(IIIIII)V

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mInStartingFocusRecording:Z

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v0, "continuous-video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/VideoBase;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method protected abstract onStopVideoRecording(Z)V
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 334
    iget-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez p1, :cond_0

    .line 336
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 3

    .line 1161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1162
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1164
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const-string v2, "from_where"

    .line 1163
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1166
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":miui:starting_window_label"

    .line 1165
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "StartActivityWhenLocked"

    .line 1168
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1170
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1171
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 1173
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->trackGotoSettings()V

    return-void
.end method

.method public playVideo()V
    .locals 0

    .line 1157
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->startPlayVideoActivity()V

    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->stopFaceDetection()V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->updateStereoSettings(Z)V

    .line 181
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "start to switch camera."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    const/4 v0, -0x1

    .line 183
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 184
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    return-void
.end method

.method public abstract readVideoPreferences()V
.end method

.method protected abstract record()V
.end method

.method public registerProtocol()V
    .locals 2

    .line 380
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 381
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 382
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method protected removeHandlerMessages()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requsetAudioFoucs()V
    .locals 3

    .line 624
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "requsetAudioFoucs"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    .line 628
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method protected resetAllFaceBeautyAdvParams()V
    .locals 2

    .line 1480
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->clearFaceBeautyAdvParams()V

    .line 1482
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->apply3DBeautyParam(Landroid/hardware/Camera$Parameters;Z)V

    :cond_0
    return-void
.end method

.method protected resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    .line 1472
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautyRecord(Landroid/hardware/Camera$Parameters;Z)V

    .line 1475
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public abstract resizeForPreviewAspectRatio()V
.end method

.method restoreMusicSound()V
    .locals 3

    .line 539
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mOriginalMusicVolume:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 542
    :cond_0
    iput v1, p0, Lcom/android/camera/module/VideoBase;->mOriginalMusicVolume:I

    .line 543
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method restorePreferences()V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 1

    .line 1177
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setBeautyParams()V
    .locals 4

    .line 1456
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1458
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyVersion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1459
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1460
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautyRecord(Landroid/hardware/Camera$Parameters;Z)V

    .line 1462
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->resetAllFaceBeautyAdvParams()V

    .line 1463
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyParams level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1465
    :cond_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "setBeautyParams close"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    return-void
.end method

.method setCameraParameters()V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1134
    sget-object p0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "the camera device is null while setCameraParameters"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1137
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoParametersPreference()V

    .line 1138
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1140
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1141
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_2

    .line 1142
    :cond_1
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    :cond_2
    return-void
.end method

.method setVideoFocusMode(Ljava/lang/String;)V
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 690
    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    .line 691
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 692
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoFocusMode()V

    .line 693
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p1, :cond_1

    .line 694
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    :goto_0
    return-void
.end method

.method showAlert()V
    .locals 5

    .line 881
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 883
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v1

    .line 882
    invoke-static {v0, v1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 885
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 886
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v1

    .line 885
    invoke-static {v0, v1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 891
    iget v2, p0, Lcom/android/camera/module/VideoBase;->mOrientationCompensationAtRecordStart:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 892
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    .line 891
    :goto_1
    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 894
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showReviewViews(Landroid/graphics/Bitmap;)V

    .line 896
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 899
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v0, 0x6

    .line 900
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    return-void
.end method

.method showFirstUseHintIfNeeded()V
    .locals 3

    .line 982
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    .line 984
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method silenceSounds()V
    .locals 3

    .line 609
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->requsetAudioFoucs()V

    .line 614
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mOriginalMusicVolume:I

    .line 615
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mOriginalMusicVolume:I

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 618
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x17

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 726
    invoke-static {}, Lcom/android/camera/Device;->supportFaceDetectionInVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFaceDetectionStarted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 738
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    const/4 v0, 0x1

    .line 740
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFaceDetectionStarted:Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected abstract startPlayVideoActivity()V
.end method

.method public startPreview()V
    .locals 0

    return-void
.end method

.method public stopFaceDetection()V
    .locals 3

    .line 393
    invoke-static {}, Lcom/android/camera/Device;->supportFaceDetectionInVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    goto :goto_0

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 401
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v1, :cond_2

    .line 402
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v2, "stopFaceDetection"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFaceDetectionStarted:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 201
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->stopFaceDetection()V

    .line 204
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz p0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    :cond_1
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 387
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 388
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 389
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method unlockAEAF()V
    .locals 3

    .line 469
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "unlockAEAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 475
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    .line 476
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetEvValue()V

    .line 480
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void

    .line 471
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockAEAF internal status error, mParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", switching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method updateAutoFocusMoveCallback()V
    .locals 2

    .line 675
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0

    .line 679
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method updateMotionFocusManager()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    .line 721
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 720
    invoke-virtual {v0, p0}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    return-void
.end method

.method protected updateRecordingTime()V
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isThermalThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 373
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    .line 372
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 374
    invoke-static {}, Lcom/android/camera/ThermalDetector;->instance()Lcom/android/camera/ThermalDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThermalDetector;->onThermalNotification()V

    :cond_0
    return-void
.end method

.method public updateStereoSettings(Z)V
    .locals 1

    .line 409
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 411
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string p1, "pref_camera_video_flashmode_key"

    const-string v0, "off"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {p0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    :cond_1
    :goto_0
    return-void
.end method

.method updateVideoFocusMode()V
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_1

    .line 704
    :cond_0
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v1, "continuous-video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 709
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 713
    :goto_0
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateMotionFocusManager()V

    .line 715
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateAutoFocusMoveCallback()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected abstract updateVideoParametersPreference()V
.end method

.method waitStereoSwitchThread()V
    .locals 2

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mStereoSwitchThread:Lcom/android/camera/module/VideoBase$StereoSwitchThread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mStereoSwitchThread:Lcom/android/camera/module/VideoBase$StereoSwitchThread;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase$StereoSwitchThread;->cancel()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    throw p0

    :catch_0
    move-exception p0

    .line 599
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
