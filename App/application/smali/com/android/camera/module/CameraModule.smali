.class public Lcom/android/camera/module/CameraModule;
.super Lcom/android/camera/module/BaseModule;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/FocusManager$Listener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
.implements Lcom/android/camera/ui/ObjectView$ObjectViewListener;
.implements Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;
.implements Lcom/android/camera/protocol/ModeProtocol$FaceBeautyProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$AILensProtocol;
.implements Lcom/android/camera/MutexModeManager$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/CameraModule$CameraCategory;,
        Lcom/android/camera/module/CameraModule$MetaDataManager;,
        Lcom/android/camera/module/CameraModule$BurstSpeedController;,
        Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;,
        Lcom/android/camera/module/CameraModule$AutoFocusCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;,
        Lcom/android/camera/module/CameraModule$SaveOutputImageTask;,
        Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;,
        Lcom/android/camera/module/CameraModule$JpegPictureCallback;,
        Lcom/android/camera/module/CameraModule$RawPictureCallback;,
        Lcom/android/camera/module/CameraModule$PostViewPictureCallback;,
        Lcom/android/camera/module/CameraModule$ShutterCallback;,
        Lcom/android/camera/module/CameraModule$MainHandler;,
        Lcom/android/camera/module/CameraModule$MultiSnapStopState;,
        Lcom/android/camera/module/CameraModule$AEStableAction;
    }
.end annotation


# static fields
.field protected static final BURST_SHOOTING_COUNT:I

.field protected static final TAG:Ljava/lang/String; = "CameraModule"


# instance fields
.field private m3ALocked:Z

.field private mAESceneDisposable:Lio/reactivex/disposables/Disposable;

.field private mAESceneStatusEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "[B>;"
        }
    .end annotation
.end field

.field private mAEStableAction:Lcom/android/camera/module/CameraModule$AEStableAction;

.field private mAFEndLogTimes:I

.field private mAeLockSupported:Z

.field private mAiSceneDisposable:Lio/reactivex/disposables/Disposable;

.field private mAiSceneEnabled:Z

.field private mAiSceneFloableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "[B>;"
        }
    .end annotation
.end field

.field protected mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

.field private final mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field protected mAwbLockSupported:Z

.field private mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

.field private mBroadcastIntent:Landroid/content/Intent;

.field private mBurstShotTitle:Ljava/lang/String;

.field private mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

.field protected mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

.field protected volatile mCameraState:I

.field private mCameraUUIDWatermarkImageData:[B

.field public mCaptureStartTime:J

.field private mContinuousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mCurrentAiScene:I

.field private mCurrentDetectedScene:I

.field private mCurrentFaceScene:I

.field private mDidRegister:Z

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

.field protected mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field protected mFirstTimeInitialized:Z

.field protected mFocusAreaSupported:Z

.field protected mFocusManager:Lcom/android/camera/FocusManager;

.field protected mFocusStartTime:J

.field protected mFoundFaces:[Landroid/hardware/Camera$Face;

.field private mGroupFaceNum:I

.field private mGroupShot:Lcom/android/camera/groupshot/GroupShot;

.field private mGroupShotTimes:I

.field protected final mHandler:Landroid/os/Handler;

.field private mHasAiSceneFilterEffect:Z

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCountDown:Z

.field private mIsGradienterOn:Z

.field protected mIsImageCaptureIntent:Z

.field private mIsLensServiceBound:Z

.field private mIsSaveCaptureImage:Z

.field protected mIsZSLMode:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field protected mJpegRotation:I

.field private mKeepBitmapTexture:Z

.field private mLastBackPressedTime:J

.field private mLastChangeSceneTime:J

.field private mLastFreezeHDRTime:J

.field private mLastIsEffect:Z

.field private mLastShutterButtonClickTime:J

.field private mLatestFaceScene:I

.field private mLensApi:Lcom/google/lens/sdk/LensApi;

.field private mLensStatus:I

.field private mLongClickCancelOut:Z

.field private mLongPressedAutoFocus:Z

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field protected mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

.field private mMeteringAreaSupported:Z

.field protected mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

.field protected mMultiSnapStatus:Z

.field protected mMultiSnapStopState:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

.field private mNeedAutoFocus:Z

.field private mNeedSealCameraUUID:Z

.field private mOnResumeTime:J

.field private mParsedAiScene:I

.field private mPendingCapture:Z

.field private mPendingEnableHHT:Z

.field private mPendingMultiCapture:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field protected final mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field protected mQuickCapture:Z

.field protected final mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field protected mReceivedJpegCallbackNum:I

.field private final mReceiverRegisterGuard:Ljava/lang/Object;

.field protected mRestartPreview:Z

.field private mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

.field private mSameFaceSceneDetectedTimes:I

.field private mSaveUri:Landroid/net/Uri;

.field protected mSceneMode:Ljava/lang/String;

.field protected mScreenLightOn:Z

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSetCameraParameter:I

.field private mSetMetaCallback:Z

.field private mShootOrientation:I

.field private mShootRotation:F

.field protected final mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field private mSnapshotOnIdle:Z

.field private mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

.field protected mSwitchingPortraitZoom:Z

.field protected mTotalJpegCallbackNum:I

.field private mUpdateImageTitle:Z

.field private mUpdateSet:I

.field protected mVolumeLongPress:Z

.field private mWaitingSuperNightResult:Z

.field private final mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

.field private volatile resetedFromMutex:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 385
    invoke-static {}, Lcom/android/camera/Device;->getBurstShootCount()I

    move-result v0

    sput v0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2590
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/4 v0, 0x1

    .line 188
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    const/4 v1, 0x0

    .line 189
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 190
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 264
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 280
    new-instance v2, Lcom/android/camera/module/CameraModule$BurstSpeedController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$BurstSpeedController;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    .line 290
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 300
    new-instance v2, Lcom/android/camera/module/CameraModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/CameraModule$1;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 331
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 338
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 339
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 341
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mReceiverRegisterGuard:Ljava/lang/Object;

    .line 342
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 347
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingEnableHHT:Z

    .line 349
    new-instance v2, Lcom/android/camera/module/CameraModule$ShutterCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    .line 350
    new-instance v2, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    .line 352
    new-instance v2, Lcom/android/camera/module/CameraModule$RawPictureCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$RawPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    .line 354
    new-instance v2, Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$AutoFocusCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    .line 356
    new-instance v2, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    .line 381
    new-instance v2, Lcom/android/camera/module/CameraModule$MainHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    .line 390
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 391
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    .line 426
    sget-object v2, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->NORMAL:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopState:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    .line 428
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 443
    new-instance v2, Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-direct {v2, p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    const/16 v2, 0xa

    .line 447
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    .line 457
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mAiSceneEnabled:Z

    .line 462
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsLensServiceBound:Z

    .line 463
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mLensStatus:I

    .line 1182
    new-instance v0, Lcom/android/camera/module/CameraModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$2;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    .line 5705
    new-instance v0, Lcom/android/camera/module/CameraModule$11;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$11;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    const-wide/16 v2, 0x0

    .line 7512
    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mLastChangeSceneTime:J

    .line 7524
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->resetedFromMutex:Z

    .line 2591
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$CameraCategory;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/camera/module/CameraModule;J)J
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mLastFreezeHDRTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isLaunchedByMainIntent()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/CameraModule;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return p0
.end method

.method static synthetic access$1408(Lcom/android/camera/module/CameraModule;)I
    .locals 2

    .line 171
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/CameraModule;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/CameraModule;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/camera/module/CameraModule;J)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/module/CameraModule;ZZ)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->updateMutexModeUI(ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateSlide()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isGroupShotCapture()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->sendBurstCommand()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyPreferenceChange()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/module/CameraModule;II)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->setOrientation(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/module/CameraModule;ZZ)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->tryEnableHHT()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->disableHHT()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->changePortraitZoom()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/module/CameraModule;)Lcom/google/lens/sdk/LensApi;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mLensApi:Lcom/google/lens/sdk/LensApi;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsLensServiceBound:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mIsLensServiceBound:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onSuperNightTimeout()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/android/camera/module/CameraModule;Landroid/content/Intent;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->processXiaoAiControlAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/camera/module/CameraModule;J)J
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateShutter()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->makeScreenLightOff()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/module/CameraModule;J)J
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/android/camera/module/CameraModule;J)J
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/camera/module/CameraModule;[BI)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->writeImage([BI)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->startLensActivity()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/camera/module/CameraModule;J)J
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->is3ALocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/camera/module/CameraModule;[BI)[B
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->writeOrientationToExif([BI)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/camera/module/CameraModule;)F
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    return p0
.end method

.method static synthetic access$4700(Lcom/android/camera/module/CameraModule;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    return p0
.end method

.method static synthetic access$4800(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return p0
.end method

.method static synthetic access$4802(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    return-object p0
.end method

.method static synthetic access$5004(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    return v0
.end method

.method static synthetic access$5006(Lcom/android/camera/module/CameraModule;)I
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/camera/module/CameraModule;)[B
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object p0
.end method

.method static synthetic access$5102(Lcom/android/camera/module/CameraModule;[B)[B
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->needReturnInvisibleWatermark()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getCameraUUID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 171
    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->buildWaterMarkForCameraUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->cancelRunningInvisibleWatermarkTask()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/module/CameraModule;Ljava/lang/String;I)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->executeInvisibleWatermarkTask(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mWaitingSuperNightResult:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/camera/module/CameraModule;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/camera/module/CameraModule;J)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->trackTakePictureCost(J)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mPendingEnableHHT:Z

    return p0
.end method

.method static synthetic access$6302(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mPendingEnableHHT:Z

    return p1
.end method

.method static synthetic access$6402(Lcom/android/camera/module/CameraModule;[B)[B
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mCameraUUIDWatermarkImageData:[B

    return-object p1
.end method

.method static synthetic access$6502(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;)Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return p0
.end method

.method static synthetic access$6602(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopMultiSnap()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/module/CameraModule;)J
    .locals 2

    .line 171
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$7200(Lcom/android/camera/module/CameraModule;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return p0
.end method

.method static synthetic access$7202(Lcom/android/camera/module/CameraModule;I)I
    .locals 0

    .line 171
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return p1
.end method

.method static synthetic access$7208(Lcom/android/camera/module/CameraModule;)I
    .locals 2

    .line 171
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mAFEndLogTimes:I

    return v0
.end method

.method static synthetic access$7300(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->captureInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7402(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$AEStableAction;)Lcom/android/camera/module/CameraModule$AEStableAction;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mAEStableAction:Lcom/android/camera/module/CameraModule$AEStableAction;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/camera/module/CameraModule;)I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mLensStatus:I

    return p0
.end method

.method static synthetic access$7602(Lcom/android/camera/module/CameraModule;I)I
    .locals 0

    .line 171
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mLensStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/camera/module/CameraModule;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mAESceneStatusEmitter:Lio/reactivex/FlowableEmitter;

    return-object p0
.end method

.method static synthetic access$8002(Lcom/android/camera/module/CameraModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mAESceneStatusEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/camera/module/CameraModule;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mAiSceneFloableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p0
.end method

.method static synthetic access$8102(Lcom/android/camera/module/CameraModule;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mAiSceneFloableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPortraitSuccessHintShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8300(Lcom/android/camera/module/CameraModule;)Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    return p0
.end method

.method static synthetic access$8400(Lcom/android/camera/module/CameraModule;I)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setPortraitSuccessHintVisible(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onAEStable()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/camera/module/CameraModule;[B)Z
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->parseAEStatusResult([B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$8700(Lcom/android/camera/module/CameraModule;IZ)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->consumeAiSceneResult(IZ)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/camera/module/CameraModule;I)Z
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->shouldChangeAiScene(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$8900(Lcom/android/camera/module/CameraModule;[B)I
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->parseAiSceneResult([B)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->postStartPreview()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/camera/module/CameraModule;II)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->trackAISceneChanged(II)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/camera/module/CameraModule;I)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setAiSceneEffect(I)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->updateHDR(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyBacklightEffect()V

    return-void
.end method

.method static synthetic access$9402(Lcom/android/camera/module/CameraModule;Z)Z
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->resetedFromMutex:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopScreenLightDirectly()V

    return-void
.end method

.method private animateCapture()V
    .locals 1

    .line 5571
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    .line 5572
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5575
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private animateHold()V
    .locals 1

    .line 5559
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 5560
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    :cond_0
    return-void
.end method

.method private animateShutter()V
    .locals 1

    .line 1219
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    const/4 v0, 0x0

    .line 1221
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    goto :goto_0

    .line 1223
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateHold()V

    :goto_0
    return-void
.end method

.method private animateSlide()V
    .locals 1

    .line 5565
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 5566
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    :cond_0
    return-void
.end method

.method private applyBacklightEffect()V
    .locals 2

    .line 7798
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->trackAISceneChanged(II)V

    .line 7799
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->setAiSceneEffect(I)V

    const-string v0, "normal"

    .line 7800
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateHDR(Ljava/lang/String;)V

    .line 7801
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetEvValue()V

    return-void
.end method

.method private applyPreferenceChange()V
    .locals 2

    .line 6271
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 6272
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 6274
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 6275
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    :cond_1
    const/4 v0, 0x0

    .line 6277
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    return-void
.end method

.method private static buildWaterMarkForCameraUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 7024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private canTakePicture()Z
    .locals 0

    .line 4106
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cancelRunningInvisibleWatermarkTask()V
    .locals 2

    .line 5062
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5063
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 5064
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    :cond_0
    return-void
.end method

.method private captureInternal()Z
    .locals 6

    .line 2231
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2239
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2240
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v3}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackCaptureTimeStart(ZI)V

    .line 2241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 2242
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    const-wide/16 v3, 0x0

    .line 2243
    iput-wide v3, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    const/4 v0, 0x0

    .line 2244
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 2248
    sget-boolean v3, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/camera/Device;->IS_C1:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/camera/Device;->IS_C8:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/camera/Device;->IS_E4:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/camera/Device;->IS_D2T:Z

    if-nez v3, :cond_1

    .line 2249
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2251
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_2

    return v1

    .line 2255
    :cond_2
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 2256
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPictureOrientation()V

    .line 2257
    invoke-static {}, Lcom/android/camera/Device;->isUDCFPortraitNeedRotation()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2258
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v4, "setRotation 0 for UDCF portrait mode"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    goto :goto_0

    .line 2261
    :cond_3
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRotation -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2264
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v3

    const/16 v4, 0x100

    if-ne v4, v3, :cond_4

    .line 2266
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v0

    .line 2269
    :goto_1
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isTestImageCaptureWithoutLocation()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    invoke-static {v4, v5}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2272
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 2275
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2276
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    if-eqz v4, :cond_6

    .line 2277
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2281
    :cond_6
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2282
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 2284
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-nez v4, :cond_7

    .line 2285
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 2288
    :cond_7
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    .line 2290
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-virtual {v4, v3}, Lcom/android/camera/module/CameraModule$CameraCategory;->takePicture(Landroid/location/Location;)V

    .line 2292
    invoke-static {}, Lcom/android/camera/Device;->isCaptureStopFaceDetection()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2293
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 2296
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2297
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    .line 2298
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 2299
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 2300
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareGroupShot()V

    .line 2301
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareSuperNight()V

    .line 2303
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->needUpdateThumbProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2304
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->updateThumbProgress(Z)V

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_a
    :goto_3
    return v1
.end method

.method private changePortraitZoom()V
    .locals 2

    .line 5357
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "changePortraitZoom"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 5358
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    return-void
.end method

.method private checkRestartPreview()V
    .locals 2

    .line 6191
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 6192
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "Restarting Preview... Camera Mode Changed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 6194
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 6195
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    const/4 v0, 0x1

    .line 6196
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    const/4 v0, 0x0

    .line 6197
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    :cond_0
    return-void
.end method

.method private clearTopConfigBeforeBurst()V
    .locals 6

    .line 4403
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4404
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    .line 4406
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v2

    .line 4408
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 4409
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    new-array v2, v5, [I

    const/16 v3, 0xc4

    aput v3, v2, v4

    .line 4410
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 4413
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4414
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v5, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    new-array p0, v5, [I

    const/16 v1, 0xc1

    aput v1, p0, v4

    .line 4415
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto :goto_0

    .line 4417
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    .line 4418
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4419
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v5, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    new-array p0, v5, [I

    const/16 v1, 0xc2

    aput v1, p0, v4

    .line 4420
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private consumeAiSceneResult(IZ)V
    .locals 9

    .line 7625
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    if-ne v0, p1, :cond_0

    return-void

    .line 7629
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 7633
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->resetedFromMutex:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 7638
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->resetedFromMutex:Z

    .line 7640
    :cond_3
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAiSceneResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; isReset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 7641
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 7642
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 7644
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa4

    .line 7645
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/4 v3, -0x1

    const-string v4, "off"

    const/4 v5, 0x1

    const/16 v6, 0x8

    const-string v7, "e"

    if-eq p1, v3, :cond_b

    const/4 v0, 0x0

    const/4 v3, 0x6

    if-eq p1, v5, :cond_9

    const/4 v5, 0x4

    if-eq p1, v5, :cond_8

    const/16 v5, 0xa

    const/4 v8, 0x2

    if-eq p1, v5, :cond_7

    const/16 v4, 0xf

    if-eq p1, v4, :cond_6

    const/16 v4, 0x13

    if-eq p1, v4, :cond_6

    const/16 v3, 0x19

    if-eq p1, v3, :cond_5

    const/4 v3, 0x7

    if-eq p1, v3, :cond_4

    if-eq p1, v6, :cond_4

    .line 7727
    invoke-interface {v2, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_0

    .line 7722
    :cond_4
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    .line 7723
    invoke-interface {v2, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_0

    .line 7677
    :cond_5
    iget p2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-direct {p0, p2, v3}, Lcom/android/camera/module/CameraModule;->trackAISceneChanged(II)V

    .line 7678
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAiSceneImageLevel(I)V

    .line 7679
    invoke-interface {v1, v6, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSelector(ILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V

    .line 7680
    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->setAiSceneEffect(I)V

    .line 7681
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    .line 7682
    invoke-interface {v2, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 7683
    invoke-virtual {p0, v8}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    return-void

    .line 7712
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7717
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    .line 7718
    invoke-interface {v2, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_0

    .line 7688
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/camera/module/CameraModule;->updateHDR(Ljava/lang/String;)V

    new-array v3, v8, [I

    .line 7689
    fill-array-data v3, :array_0

    invoke-interface {v2, v7, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->closeMutexElement(Ljava/lang/String;[I)V

    goto :goto_0

    .line 7704
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7706
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    .line 7707
    invoke-interface {v2, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_0

    .line 7695
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7699
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    .line 7700
    invoke-interface {v2, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    .line 7731
    :goto_0
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/CameraModule;->trackAISceneChanged(II)V

    .line 7732
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAiSceneImageLevel(I)V

    .line 7733
    invoke-interface {v1, v6, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSelector(ILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V

    .line 7734
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->setAiSceneEffect(I)V

    if-nez p2, :cond_a

    .line 7737
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    :cond_a
    return-void

    .line 7649
    :cond_b
    new-instance p2, Lcom/android/camera/module/CameraModule$23;

    invoke-direct {p2, p0}, Lcom/android/camera/module/CameraModule$23;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 7666
    invoke-direct {p0, v4}, Lcom/android/camera/module/CameraModule;->updateHDR(Ljava/lang/String;)V

    new-array v3, v5, [I

    const/16 v4, 0xc1

    aput v4, v3, v0

    .line 7667
    invoke-interface {v2, v7, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->closeMutexElement(Ljava/lang/String;[I)V

    const/16 v2, 0x17

    .line 7669
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAiSceneImageLevel(I)V

    .line 7670
    invoke-interface {v1, v6, v0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    .line 7671
    invoke-interface {v1, v0, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSelector(ILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V

    .line 7672
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->applyBacklightEffect()V

    .line 7674
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    :cond_c
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xc2
        0xc1
    .end array-data
.end method

.method private couldEnableObjectTrack()Z
    .locals 2

    .line 5879
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private disableHHT()V
    .locals 1

    .line 7388
    invoke-static {}, Lcom/android/camera/Device;->enhanceBeautyWithHHT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7389
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    :cond_0
    return-void
.end method

.method private doAttach()V
    .locals 6

    const-string v0, "crop-temp"

    .line 3257
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    .line 3260
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 3261
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    if-eqz v2, :cond_1

    .line 3262
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->saveJpegData([B)V

    .line 3264
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 3269
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 3272
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->needReturnInvisibleWatermark()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3274
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraUUIDWatermarkImageData:[B

    if-nez v1, :cond_2

    .line 3277
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 3278
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3285
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 3286
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3287
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 3289
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3292
    :try_start_1
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v2, "IOException when doAttach"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3295
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3296
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 3295
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3296
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    const v0, 0xc800

    .line 3299
    invoke-static {v1, v0}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3300
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    invoke-static {v1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v1

    .line 3301
    invoke-static {v0, v1}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3302
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    .line 3303
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 3302
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3304
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 3311
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3312
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3313
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5, v0, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3314
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3315
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3317
    :try_start_4
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3327
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 3329
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3330
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "circleCrop"

    const-string v3, "true"

    .line 3331
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    const-string v3, "output"

    .line 3334
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    const-string v3, "return-data"

    .line 3336
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3339
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3341
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3342
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3344
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    return-void

    :catchall_1
    move-exception p0

    move-object v3, v0

    goto :goto_6

    :catch_1
    move-object v3, v0

    goto :goto_4

    :catch_2
    move-object v3, v0

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    .line 3323
    :catch_3
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 3324
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3327
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    .line 3319
    :catch_4
    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 3320
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3327
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_6
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private execPendingEventInHandle()V
    .locals 4

    .line 3954
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3955
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3956
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3960
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3961
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3962
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private executeInvisibleWatermarkTask(Ljava/lang/String;I)V
    .locals 1

    .line 5056
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->cancelRunningInvisibleWatermarkTask()V

    .line 5057
    new-instance v0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;-><init>(Lcom/android/camera/module/CameraModule;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    .line 5058
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mRunningSealInvisibleWatermarkTask:Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private faceSceneFiltering(I)Z
    .locals 4

    .line 7759
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mLatestFaceScene:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 7760
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mLatestFaceScene:I

    .line 7761
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mSameFaceSceneDetectedTimes:I

    goto :goto_0

    .line 7762
    :cond_0
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mSameFaceSceneDetectedTimes:I

    const/16 v2, 0x14

    if-ge p1, v2, :cond_1

    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 7763
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mSameFaceSceneDetectedTimes:I

    .line 7764
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mSameFaceSceneDetectedTimes:I

    if-ne v2, p1, :cond_1

    iget p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentFaceScene:I

    if-eq p1, v0, :cond_1

    .line 7766
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mLatestFaceScene:I

    .line 7767
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mLatestFaceScene:I

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentFaceScene:I

    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method private getCameraModeName()Ljava/lang/String;
    .locals 2

    .line 7223
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7224
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHDR()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u81ea\u52a8HDR"

    goto :goto_0

    :cond_0
    const-string p0, "HDR"

    :goto_0
    return-object p0

    .line 7225
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7226
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u81ea\u52a8HHT"

    goto :goto_1

    :cond_2
    const-string p0, "HHT"

    :goto_1
    return-object p0

    .line 7227
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isGroupShotCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "\u5408\u5f71\u4f18\u9009"

    return-object p0

    .line 7230
    :cond_4
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_6

    const/16 v1, 0xab

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    return-object p0

    .line 7234
    :cond_6
    :goto_2
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCameraUUID()Ljava/lang/String;
    .locals 3

    .line 7029
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "camera-get-fusion-id"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7030
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 7031
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 7032
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "camera-fusion-id"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCountDownTimes()I
    .locals 3

    .line 3440
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3441
    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v0

    goto :goto_0

    .line 3443
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getTimerDurationSeconds()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3447
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mBroadcastIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TIMER_DURATION_SECONDS"

    if-eqz v1, :cond_1

    .line 3448
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 3450
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_3

    const/4 p0, 0x5

    if-eq v0, p0, :cond_2

    const/4 p0, 0x3

    :cond_2
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 3461
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCountDownTimes()I

    move-result p0

    return p0
.end method

.method public static getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 3
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

    .line 2852
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "pref_camera_groupshot_mode_key"

    const-string v1, "pref_audio_capture"

    const-string v2, "pref_delay_capture_mode"

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    const-string p1, "pref_camera_panoramamode_key"

    .line 2855
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2857
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2858
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_1

    .line 2859
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "pref_camera_ubifocus_key"

    .line 2860
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p1, "pref_camera_manual_mode_key"

    .line 2862
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2863
    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "pref_camera_gradienter_key"

    .line 2864
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2867
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-nez p1, :cond_3

    const-string p1, "pref_camera_face_beauty_mode_key"

    .line 2868
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string p1, "pref_camera_hand_night_key"

    if-nez p2, :cond_4

    .line 2870
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2871
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2872
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isHideHHTMenu()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2873
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2875
    :cond_5
    :goto_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v0, :cond_6

    const-string v0, "pref_camera_scenemode_setting_key"

    .line 2876
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2878
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "pref_camera_tilt_shift_mode"

    .line 2879
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2881
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isSupportSquare()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "pref_camera_square_mode_key"

    .line 2882
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez p2, :cond_b

    .line 2884
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {}, Lcom/android/camera/Device;->isHideHHTMenu()Z

    move-result p2

    if-nez p2, :cond_b

    .line 2885
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2888
    :cond_9
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2889
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2890
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "pref_camera_magic_mirror_key"

    .line 2891
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2893
    :cond_a
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2894
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_1
    return-object p0
.end method

.method private getLegacyDefaultRatio(Ljava/lang/String;[I)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 7073
    array-length v0, p2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7076
    aget v0, p2, v0

    aget v1, p2, p0

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    return p0

    .line 7080
    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getBeautifyDefaultValue(Ljava/lang/String;)I

    move-result p1

    .line 7081
    aget p0, p2, p0

    sub-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return p0
.end method

.method private getMaxPictureSize()I
    .locals 2

    .line 1377
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1378
    :cond_1
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "workaround for portrait mode. we should not limit the picture size for portrait mode"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1381
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result p0

    .line 1382
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v1, p0, :cond_5

    .line 1383
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 1389
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x753000

    return p0

    :cond_4
    return v0

    .line 1384
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportFullSizeEffect()Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    .line 1387
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isLowerEffectSize()Z

    move-result p0

    if-eqz p0, :cond_7

    const/high16 p0, 0x300000

    goto :goto_1

    :cond_7
    const p0, 0x895440

    :goto_1
    return p0
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 7

    .line 1076
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 1077
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string p1, "parameters have been set to null when handleUpdateFaceView"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1080
    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    if-eqz p1, :cond_3

    .line 1083
    iget-boolean p2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1084
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1085
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v3, 0x1

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFaceView(ZZZZI)V

    goto :goto_1

    .line 1089
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v2, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFaceView(ZZZZI)V

    :cond_4
    :goto_1
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 1

    .line 5262
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5263
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 5264
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->setEffectViewVisible(Z)V

    .line 5268
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v0, 0x6

    .line 5270
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    return-void
.end method

.method private hideSceneSelector()V
    .locals 2

    .line 6137
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/CameraModule$12;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$12;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initAIASDSetting()V
    .locals 1

    const/4 v0, 0x0

    .line 6129
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mLatestFaceScene:I

    .line 6130
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    .line 6131
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mParsedAiScene:I

    .line 6132
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->setAiSceneEffect(I)V

    return-void
.end method

.method private initAiSceneParser()V
    .locals 2

    .line 7543
    new-instance v0, Lcom/android/camera/module/CameraModule$22;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$22;-><init>(Lcom/android/camera/module/CameraModule;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 7544
    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/android/camera/constant/GlobalConstant;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 7551
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/CameraModule$21;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$21;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 7552
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/CameraModule$20;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$20;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 7558
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 7564
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/CameraModule$19;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$19;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 7565
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 7572
    invoke-virtual {v0}, Lio/reactivex/Flowable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAiSceneDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initializeObjectTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    .line 5897
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5898
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 5899
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result p0

    return p0
.end method

.method private initializeSecondTime()V
    .locals 1

    .line 1071
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    const/4 v0, 0x1

    .line 1072
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    return-void
.end method

.method private installIntentFilter()V
    .locals 5

    .line 3742
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mReceiverRegisterGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 3743
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3747
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.camera.action.XIAOAI_CONTROL"

    .line 3748
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3749
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installIntentFilter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 3751
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 3752
    monitor-exit v0

    return-void

    .line 3744
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 3752
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private is3ALocked()Z
    .locals 0

    .line 3624
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    return p0
.end method

.method private isAlgorithmEnable()Z
    .locals 3

    .line 5524
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pref_camera_hdr_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5525
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5526
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontBokehOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5527
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5528
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5529
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHDR()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5530
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

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

.method private isCameraIdle()Z
    .locals 3

    .line 5219
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 5220
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget p0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isCountDownMode()Z
    .locals 0

    .line 3429
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->shouldCountDownFromAction()Z

    move-result p0

    if-nez p0, :cond_1

    .line 3430
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

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

.method private isGroupShotCapture()Z
    .locals 2

    .line 7009
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLaunchedByMainIntent()Z
    .locals 1

    .line 5070
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 5071
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5073
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "android.intent.action.MAIN"

    .line 5076
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isPortraitSuccessHintShowing()Z
    .locals 1

    .line 6820
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    .line 6821
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    .line 6823
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isPortraitHintVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPreviewVisible()Z
    .locals 2

    .line 4280
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4284
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isSelectingCapturedImage()Z
    .locals 2

    .line 4265
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4270
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const v1, 0x7f090019

    .line 4271
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result p0

    const/16 v1, 0xff3

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isShutterButtonClickable()Z
    .locals 1

    .line 3541
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTestImageCaptureWithoutLocation()Z
    .locals 3

    .line 2529
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.providerui.cts.fileprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2530
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "isTestImageCaptureWithoutLocation"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2533
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    .line 1031
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 3

    .line 5598
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private lockAEAF()V
    .locals 2

    .line 3609
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3610
    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 3612
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setFocusParameters()V

    .line 3613
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    return-void
.end method

.method private makeScreenLightOff()V
    .locals 2

    .line 7805
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_light_on"

    .line 7806
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7807
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopScreenLight()V

    :cond_0
    return-void
.end method

.method private needReturnInvisibleWatermark()Z
    .locals 0

    .line 3253
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mNeedSealCameraUUID:Z

    return p0
.end method

.method private needUpdateThumbProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private onAEStable()V
    .locals 2

    .line 7503
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "onAEStable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7504
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mAEStableAction:Lcom/android/camera/module/CameraModule$AEStableAction;

    if-eqz p0, :cond_0

    .line 7505
    invoke-interface {p0}, Lcom/android/camera/module/CameraModule$AEStableAction;->onAEStable()V

    :cond_0
    return-void
.end method

.method private onDeparted()V
    .locals 2

    .line 4132
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    .line 4133
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 4135
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4136
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "do cancel when in select capture image status"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeVisible()V

    .line 4138
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    :cond_1
    return-void
.end method

.method private onSettingsBack()V
    .locals 3

    .line 5300
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    const/4 v1, 0x3

    .line 5301
    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5302
    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 5303
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restorePreferences()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5304
    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5305
    invoke-virtual {v0, v1}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 5306
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSuperNightTimeout()V
    .locals 2

    .line 2371
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "Super night timeout do some cleanup."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 2375
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isKeptBitmapTexture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2376
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2377
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 2380
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2382
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitingSuperNightResult:Z

    .line 2383
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2384
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2386
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc6

    .line 2387
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_2

    .line 2389
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 2392
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2393
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isLaunchedByMainIntent()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->isMainIntentActivityLaunched()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2394
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "Super night timeout: should not do later release to avoid release the camera hold by main activity"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2396
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->doLaterRelease()V

    :cond_4
    :goto_0
    return-void
.end method

.method private parseAEStatusResult([B)Z
    .locals 2

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    .line 7495
    array-length v0, p1

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 7499
    aget-byte p1, p1, v0

    and-int/2addr p1, p0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private parseAiSceneResult([B)I
    .locals 10

    const/16 v0, 0x8

    .line 7586
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 7588
    :goto_0
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDetectHDR : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 7590
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportAiSceneModeHuman()Z

    move-result v0

    const/high16 v3, -0x80000000

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFoundFaces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    .line 7591
    array-length v4, v0

    move v5, v1

    move v6, v3

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v7, v0, v5

    .line 7592
    iget-object v8, v7, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/16 v9, 0x12c

    if-le v8, v9, :cond_2

    .line 7593
    sget-object v6, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseAiSceneResult: AI_SCENE_MODE_HUMAN  face.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera/module/CameraModule;->mFoundFaces:[Landroid/hardware/Camera$Face;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";face.width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 7595
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";isDetectHDR = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7593
    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const/4 v6, -0x1

    goto :goto_2

    :cond_1
    const/16 v6, 0x19

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v6, v3

    .line 7607
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/camera/module/CameraModule;->faceSceneFiltering(I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne v6, v3, :cond_7

    const/16 v0, 0x9

    .line 7609
    aget-byte p1, p1, v0

    if-ltz p1, :cond_6

    const/16 v0, 0xff

    if-lt p1, v0, :cond_5

    goto :goto_3

    .line 7614
    :cond_5
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mParsedAiScene:I

    goto :goto_4

    .line 7611
    :cond_6
    :goto_3
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseAiSceneResult: parse a error result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7612
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mParsedAiScene:I

    goto :goto_4

    .line 7617
    :cond_7
    iput v6, p0, Lcom/android/camera/module/CameraModule;->mParsedAiScene:I

    .line 7620
    :cond_8
    :goto_4
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mParsedAiScene:I

    return p0
.end method

.method private parseIntent()V
    .locals 2

    .line 2641
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    .line 2642
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    .line 2643
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 2647
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getExtraSavedUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    .line 2648
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getExtraCropValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    .line 2649
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getExtraShouldSaveCapture()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    .line 2651
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getNeedSealCameraUUIDIntentExtras(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedSealCameraUUID:Z

    .line 2652
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isQuickCapture()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    return-void
.end method

.method private postStartPreview()V
    .locals 4

    .line 987
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    .line 991
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setPreviewCallback()V

    .line 992
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 993
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 994
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 995
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v1, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 997
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 999
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onSettingsBack()V

    .line 1000
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 1001
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->takeAPhotoIfNeeded()V

    .line 1003
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    const-wide/16 v1, 0x5a

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private prepareGroupShot()V
    .locals 2

    .line 6997
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isGroupShotCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6998
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->initGroupShot(I)V

    .line 6999
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7000
    invoke-virtual {v0, v1}, Lcom/android/camera/groupshot/GroupShot;->attach_start(I)I

    goto :goto_0

    .line 7002
    :cond_0
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    :goto_0
    const/4 v0, 0x0

    .line 7004
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    :cond_1
    return-void
.end method

.method private prepareSuperNight()V
    .locals 4

    .line 2313
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xac

    if-eq v0, v1, :cond_0

    return-void

    .line 2318
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    const-wide/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2321
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc6

    .line 2322
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    .line 2323
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare()V

    .line 2324
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    const/16 v0, 0x12c

    .line 2326
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xdac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/CameraModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$6;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 2327
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2333
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/CameraModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$5;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 2334
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private prepareUIByPreviewSize()V
    .locals 3

    .line 2788
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2789
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    return-void

    .line 2792
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2793
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    return-void

    .line 2797
    :cond_1
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getPictureSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2798
    new-instance v1, Lcom/android/camera/PictureSize;

    invoke-direct {v1, v0}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2800
    iget v0, v1, Lcom/android/camera/PictureSize;->width:I

    iget v2, v1, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 2801
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    if-eq v0, v2, :cond_2

    .line 2802
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 2804
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2805
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object p0

    iget v0, v1, Lcom/android/camera/PictureSize;->width:I

    iget v1, v1, Lcom/android/camera/PictureSize;->height:I

    .line 2806
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    .line 2805
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(F)V

    :cond_3
    return-void
.end method

.method private previewBecomeInvisible()V
    .locals 1

    const/4 v0, 0x1

    .line 5276
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    return-void
.end method

.method private previewBecomeVisible()V
    .locals 1

    .line 5284
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 5285
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5286
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 5288
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    return-void
.end method

.method private processXiaoAiControlAction(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, "android.intent.extras.XIAOAI_CONTROL_ACTION"

    .line 1206
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private releaseEffectProcessor()V
    .locals 2

    .line 6319
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6320
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 6321
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->release()V

    .line 6322
    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    :cond_0
    return-void
.end method

.method private releaseMediaProviderClient()V
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    .line 1038
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    :cond_0
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .line 6313
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    const/4 v0, 0x0

    .line 6315
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    return-void
.end method

.method private resetAiSceneInHdrOrFlashOn()V
    .locals 2

    .line 7775
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isAiSceneEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->resetedFromMutex:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 7782
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/CameraModule$24;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$24;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private resetGradienter()V
    .locals 2

    .line 6202
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6203
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 6204
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {p0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    :cond_0
    return-void
.end method

.method private restorePreferences()V
    .locals 1

    .line 5602
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    return-void

    .line 5605
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5606
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 5608
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 4

    .line 3665
    sget-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->NORMAL:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopState:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    const/4 v0, 0x0

    .line 3666
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 3667
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 3668
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 3671
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v1}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3673
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xc4

    aput v3, v2, v0

    .line 3675
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    const/4 v0, 0x2

    .line 3677
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3680
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    :cond_1
    return-void
.end method

.method private restoreTopConfigAfterBurst()V
    .locals 6

    .line 4426
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 4427
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 4429
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v2

    .line 4430
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->isClosed(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 4431
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    new-array v2, v4, [I

    const/16 v3, 0xc4

    aput v3, v2, v5

    .line 4432
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 4435
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4436
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    new-array v2, v4, [I

    const/16 v3, 0xc1

    aput v3, v2, v5

    .line 4437
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 4440
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4441
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v5, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    new-array p0, v4, [I

    const/16 v0, 0xc2

    aput v0, p0, v5

    .line 4442
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 4446
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const-string v0, "d"

    .line 4447
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    return-void
.end method

.method private resumePreview()V
    .locals 1

    .line 3826
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 3827
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private saveJpegData([B)V
    .locals 19

    move-object/from16 v0, p0

    .line 3218
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 3220
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3221
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v10, v2

    .line 3224
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v14

    .line 3226
    iget v2, v0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v2, v14

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    .line 3227
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    .line 3228
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    goto :goto_1

    .line 3230
    :cond_1
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    .line 3231
    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    :goto_1
    move v12, v1

    move v11, v2

    .line 3233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->createJpegName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3235
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    const/16 v4, 0xb

    .line 3239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 3249
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v18

    move-object/from16 v5, p1

    .line 3235
    invoke-virtual/range {v3 .. v18}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    return-void
.end method

.method private saveStatusBeforeBurst()V
    .locals 9

    .line 3629
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3630
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->clearTopConfigBeforeBurst()V

    .line 3631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v1, "pref_qc_camera_iso_key"

    const-string v3, "pref_qc_camera_exposuretime_key"

    const-string v5, "pref_camera_face_beauty_key"

    const-string v7, "pref_camera_shader_coloreffect_key"

    .line 3632
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3638
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3639
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    .line 3640
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "torch"

    .line 3641
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pref_camera_flashmode_key"

    .line 3642
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3643
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3645
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 3649
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_1

    .line 3650
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3651
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    :cond_1
    const/4 v0, 0x0

    .line 3655
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    const/4 v0, 0x3

    .line 3656
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    const/4 v0, -0x1

    .line 3657
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3658
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    return-void
.end method

.method private sendBurstCommand()V
    .locals 7

    .line 2107
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "sendBurstCommand"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v0

    .line 2110
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    .line 2111
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    .line 2110
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2112
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private sendDoCaptureMessage(J)V
    .locals 2

    const/4 v0, 0x0

    .line 5685
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 5686
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5687
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setAiSceneEffect(I)V
    .locals 4

    .line 7411
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAiSceneEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7414
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 7420
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_6

    .line 7421
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    goto :goto_1

    .line 7427
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v2

    .line 7428
    invoke-static {v2}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 7429
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v2, v1, :cond_2

    return-void

    .line 7432
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result p1

    .line 7434
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectController;->setAiSceneEffect(I)V

    .line 7435
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    .line 7436
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mHasAiSceneFilterEffect:Z

    .line 7438
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-nez v0, :cond_4

    .line 7439
    new-instance v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;-><init>(Lcom/android/camera/ActivityBase;Z)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 7440
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 7443
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v0, :cond_5

    .line 7444
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->prepareEffectRender(I)V

    .line 7445
    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    invoke-static {p1}, Lcom/android/camera/module/BaseModule;->getJpegQuality(Z)I

    move-result p1

    .line 7446
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setQuality(I)V

    :cond_5
    return-void

    .line 7422
    :cond_6
    :goto_1
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string p1, "setAiSceneEffect: scene unknown!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7415
    :cond_7
    :goto_2
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string p1, "setAiSceneEffect: nonsupport!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setOrientation(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3126
    :cond_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 3127
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 3128
    invoke-static {v0, v1}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v0

    .line 3127
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 3129
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 3133
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_1

    .line 3134
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 3135
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device orientation change to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setOrientationParameter()V

    :cond_1
    return-void
.end method

.method private setOrientationParameter()V
    .locals 5

    .line 3145
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    .line 3148
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3149
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v1, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    .line 3150
    sget-object v3, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getRotation(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 3152
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    move v0, v2

    .line 3158
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3159
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 3160
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "xiaomi-preview-rotation"

    .line 3161
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3160
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3163
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v0, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    move v0, v2

    :cond_2
    if-eqz v0, :cond_4

    .line 3167
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3168
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :cond_4
    return-void
.end method

.method private setPictureOrientation()V
    .locals 2

    .line 6286
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    :goto_0
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootRotation:F

    .line 6287
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    return-void
.end method

.method private setPortraitSuccessHintVisible(I)V
    .locals 1

    .line 6831
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    .line 6832
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 6833
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    return-void
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 2

    .line 5629
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5631
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 5632
    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    .line 5631
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    :cond_0
    return-void
.end method

.method private shouldChangeAiScene(I)Z
    .locals 6

    .line 7742
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7746
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCurrentDetectedScene:I

    if-eq v0, p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/CameraModule;->mLastChangeSceneTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 7747
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCurrentDetectedScene:I

    .line 7748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mLastChangeSceneTime:J

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private showObjectTrackToastIfNeeded()V
    .locals 3

    .line 5974
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_first_tap_screen_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5976
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5978
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x17

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 2

    .line 5238
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5239
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 5240
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 5241
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeInvisible()V

    .line 5243
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->setEffectViewVisible(Z)V

    .line 5247
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x6

    .line 5252
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 5257
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    :cond_1
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 3

    .line 1057
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    .line 1059
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1061
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1062
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private startAEDetect()V
    .locals 5

    .line 7451
    invoke-static {}, Lcom/android/camera/Device;->getScreenLightMinTime()I

    move-result v0

    const-string v1, "camera_screen_min_time"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7452
    invoke-static {}, Lcom/android/camera/Device;->getScreenLightMaxTime()I

    move-result v1

    const-string v2, "camera_screen_max_time"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    .line 7454
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v2

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v0}, Lio/reactivex/Flowable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 7455
    new-instance v2, Lcom/android/camera/module/CameraModule$18;

    invoke-direct {v2, p0}, Lcom/android/camera/module/CameraModule$18;-><init>(Lcom/android/camera/module/CameraModule;)V

    sget-object v3, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 7456
    invoke-static {v2, v3}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/android/camera/constant/GlobalConstant;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 7462
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/CameraModule$17;

    invoke-direct {v3, p0}, Lcom/android/camera/module/CameraModule$17;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 7463
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/CameraModule$16;

    invoke-direct {v3, p0}, Lcom/android/camera/module/CameraModule$16;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 7468
    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/CameraModule$15;

    invoke-direct {v3, p0}, Lcom/android/camera/module/CameraModule$15;-><init>(Lcom/android/camera/module/CameraModule;)V

    .line 7473
    invoke-virtual {v2, v0, v3}, Lio/reactivex/Flowable;->zipWith(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object v0

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7478
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 7479
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/CameraModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$13;-><init>(Lcom/android/camera/module/CameraModule;)V

    new-instance v2, Lcom/android/camera/module/CameraModule$14;

    invoke-direct {v2, p0}, Lcom/android/camera/module/CameraModule$14;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAESceneDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startCount(II)V
    .locals 1

    .line 3524
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e8

    .line 3527
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->startDelayedCaptureMessage(II)V

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    const/4 p1, 0x7

    .line 3529
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 3531
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    const/4 p1, 0x1

    .line 3532
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    return-void
.end method

.method private startLensActivity()V
    .locals 3

    .line 1410
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    .line 1411
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mLensApi:Lcom/google/lens/sdk/LensApi;

    if-nez v0, :cond_0

    return-void

    .line 1414
    :cond_0
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mLensStatus:I

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1418
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0, v1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1420
    :cond_2
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "start ai lens"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.XIAOAI_CONTROL"

    .line 1423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.lens"

    .line 1424
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "preview_width"

    .line 1425
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "preview_height"

    .line 1426
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1427
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1428
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const v0, 0x7f010004

    const v1, 0x7f010005

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1430
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "onClick: occur a exception"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startScreenLight()V
    .locals 6

    .line 7812
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getWBCurrentCCT(Landroid/hardware/Camera;)I

    move-result v0

    const-string v1, "camera_screen_light_wb"

    .line 7813
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7815
    invoke-static {v0}, Lcom/android/camera/Util;->getScreenLightColor(I)I

    move-result v1

    .line 7819
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/feature/DataItemFeature;->geScreenLightBrightness()I

    move-result v2

    const-string v3, "camera_screen_light_brightness"

    .line 7818
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 7821
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startScreenLight wb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " color:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " brightness:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7823
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/CameraModule;->startScreenLight(II)V

    const/4 v0, 0x2

    .line 7825
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    return-void
.end method

.method private startScreenLight(II)V
    .locals 3

    .line 7830
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ScreenLightProtocol;

    if-eqz v0, :cond_0

    .line 7833
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Lcom/android/camera/module/CameraModule$25;

    invoke-direct {v2, p0, p2}, Lcom/android/camera/module/CameraModule$25;-><init>(Lcom/android/camera/module/CameraModule;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7840
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ScreenLightProtocol;->setScreenLightColor(I)V

    .line 7841
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ScreenLightProtocol;->showScreenLight()V

    const/4 p1, 0x1

    .line 7842
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mScreenLightOn:Z

    :cond_0
    return-void
.end method

.method private stopMultiSnap()V
    .locals 3

    .line 3690
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "stopMultiSnap"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    sget-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->STOPPING:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopState:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    .line 3692
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    .line 3693
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    .line 3694
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restoreTopConfigAfterBurst()V

    .line 3695
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3698
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3699
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x25

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3701
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    :goto_0
    return-void
.end method

.method private stopScreenLight()V
    .locals 5

    .line 7848
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->getScreenLightStopDelay()I

    move-result v0

    const-string v1, "camera_screen_light_delay"

    .line 7847
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7850
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopScreenLight delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 7853
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/module/CameraModule$26;

    invoke-direct {v2, p0}, Lcom/android/camera/module/CameraModule$26;-><init>(Lcom/android/camera/module/CameraModule;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7860
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopScreenLightDirectly()V

    :goto_0
    return-void
.end method

.method private stopScreenLightDirectly()V
    .locals 2

    .line 7865
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7868
    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "stopScreenLightDirectly"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7870
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ScreenLightProtocol;

    if-eqz v0, :cond_1

    .line 7873
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ScreenLightProtocol;->hideScreenLight()V

    .line 7875
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/module/CameraModule$27;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$27;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 7883
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mScreenLightOn:Z

    .line 7884
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mAESceneStatusEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz p0, :cond_2

    .line 7885
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_2
    :goto_0
    return-void
.end method

.method private switchCamera()V
    .locals 1

    .line 5362
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 5366
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->switchCamera(I)V

    return-void
.end method

.method private takeAPhotoIfNeeded()V
    .locals 4

    .line 5661
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isActionPerformed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5663
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraIntentManager;->isOpenOnly(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5665
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 5666
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "take a picture for Voice control."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "off"

    .line 5669
    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5670
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5671
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5672
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    const/16 v2, 0xa3

    .line 5673
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    .line 5674
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5676
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x31

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5677
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->markPerformed()V

    goto :goto_0

    .line 5679
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private trackAISceneChanged(II)V
    .locals 0

    return-void
.end method

.method private trackBeautyInfo(I)V
    .locals 13

    .line 7085
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7087
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v1, "\u540e\u6444"

    :goto_0
    const-string v2, "\u524d\u540e\u6444"

    .line 7086
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7090
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v1

    const-string v2, "\u5ae9\u80a4"

    const-string v3, "pref_beautify_skin_smooth_ratio_key"

    const-string v4, "\u7f8e\u767d"

    const-string v5, "pref_beautify_skin_color_ratio_key"

    const-string v6, "capture"

    const-string v7, "\u7b49\u7ea7"

    const-string v8, "\u5927\u773c"

    const-string v9, "pref_beautify_enlarge_eye_ratio_key"

    const-string v10, "\u7626\u8138"

    const-string v11, "pref_beautify_slim_face_ratio_key"

    if-eqz v1, :cond_2

    .line 7091
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v1

    .line 7093
    invoke-direct {p0, v11, v1}, Lcom/android/camera/module/CameraModule;->getLegacyDefaultRatio(Ljava/lang/String;[I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v11

    .line 7095
    invoke-static {v11}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v11

    .line 7094
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7098
    invoke-direct {p0, v9, v1}, Lcom/android/camera/module/CameraModule;->getLegacyDefaultRatio(Ljava/lang/String;[I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v9

    .line 7100
    invoke-static {v9}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v9

    .line 7099
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7103
    invoke-direct {p0, v5, v1}, Lcom/android/camera/module/CameraModule;->getLegacyDefaultRatio(Ljava/lang/String;[I)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v5

    .line 7105
    invoke-static {v5}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v5

    .line 7104
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7108
    invoke-direct {p0, v3, v1}, Lcom/android/camera/module/CameraModule;->getLegacyDefaultRatio(Ljava/lang/String;[I)I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v1

    .line 7110
    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object v1

    .line 7109
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7113
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAdvancedBeautyOn(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "advanced"

    goto :goto_1

    .line 7114
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 7112
    :goto_1
    invoke-interface {v0, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, p1

    const-string v1, "picture_taken_beauty_legacy"

    .line 7115
    invoke-static {v6, v1, p0, p1, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_2

    .line 7117
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupport3DFaceBeauty()Z

    move-result p0

    const-string v1, "picture_taken_beauty"

    const/4 v12, 0x0

    if-eqz p0, :cond_3

    .line 7119
    invoke-static {v11, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7121
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    .line 7120
    invoke-interface {v0, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7123
    invoke-static {v9, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7125
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    .line 7124
    invoke-interface {v0, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_nose_ratio_key"

    .line 7127
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7129
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u82ad\u6bd4\u9f3b"

    .line 7128
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_risorius_ratio_key"

    .line 7131
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7133
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u82f9\u679c\u808c"

    .line 7132
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_lips_ratio_key"

    .line 7135
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7137
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u82b1\u74e3\u5507"

    .line 7136
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_chin_ratio_key"

    .line 7139
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7141
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u7fd8\u4e0b\u5df4"

    .line 7140
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_neck_ratio_key"

    .line 7143
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7145
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u5929\u9e45\u9888"

    .line 7144
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_smile_ratio_key"

    .line 7147
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7149
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u5fae\u7b11"

    .line 7148
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_slim_nose_ratio_key"

    .line 7151
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7153
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u7626\u9f3b"

    .line 7152
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_eyebrow_dye_ratio_key"

    .line 7156
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7158
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u67d3\u7709"

    .line 7157
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_jelly_lips_ratio_key"

    .line 7160
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7162
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u679c\u51bb\u5507"

    .line 7161
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_pupil_line_ratio_key"

    .line 7164
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7166
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u7f8e\u77b3\u7ebf"

    .line 7165
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pref_beautify_blusher_ratio_key"

    .line 7168
    invoke-static {p0, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7170
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u816e\u7ea2"

    .line 7169
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7173
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 7172
    invoke-interface {v0, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, p1

    .line 7175
    invoke-static {v6, v1, p0, p1, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_2

    .line 7179
    :cond_3
    invoke-static {v11, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7181
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    .line 7180
    invoke-interface {v0, v10, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7183
    invoke-static {v9, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7185
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    .line 7184
    invoke-interface {v0, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7187
    invoke-static {v5, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7189
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    .line 7188
    invoke-interface {v0, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7191
    invoke-static {v3, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result p0

    .line 7193
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->faceBeautyRatioToName(I)Ljava/lang/String;

    move-result-object p0

    .line 7192
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7196
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 7195
    invoke-interface {v0, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, p1

    .line 7197
    invoke-static {v6, v1, p0, p1, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :goto_2
    return-void
.end method

.method private trackLostPhotos()V
    .locals 3

    .line 7241
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraModule.trackLostPhotos.mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7242
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 7243
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getCameraModeName()Ljava/lang/String;

    move-result-object p0

    .line 7244
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraModule.trackLostPhotos.mModeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 7246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u6a21\u5f0f"

    .line 7247
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "counter"

    const-string v1, "lost_picture"

    .line 7248
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private trackManualInfo(I)V
    .locals 5

    .line 7049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x7f0f0380

    .line 7051
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_whitebalance_key"

    .line 7050
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u767d\u5e73\u8861"

    .line 7052
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7054
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->focusPositionToName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5bf9\u7126"

    .line 7053
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0f0252

    .line 7056
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_qc_camera_exposuretime_key"

    .line 7055
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7057
    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5feb\u95e8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0f029e

    .line 7059
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_qc_camera_iso_key"

    .line 7058
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7060
    invoke-static {v1}, Lcom/android/camera/CameraStatUtil;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u611f\u5149\u5ea6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7061
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u955c\u5934"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7062
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result v1

    const-string v2, "on"

    const-string v3, "off"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "\u5cf0\u503c\u5bf9\u7126"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7064
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isManualSplitMode()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string p0, "\u5bf9\u7126\u66dd\u5149\u5206\u79bb"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7066
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result p0

    .line 7067
    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->zoomIndexToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u53d8\u7126"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, p1

    const-string v1, "capture"

    const-string v2, "picture_taken_manual"

    .line 7068
    invoke-static {v1, v2, p0, p1, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private trackTakePictureCost(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x186a0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 7316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7318
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v1, "\u540e\u6444"

    :goto_0
    const-string v2, "\u524d\u540e\u6444"

    .line 7317
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7319
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u6a21\u5f0f"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x32

    .line 7321
    invoke-static {p1, p2, p0}, Lcom/android/camera/CameraStatUtil;->round(JI)J

    move-result-wide p0

    const-string p2, "capture"

    const-string v1, "take_picture_cost"

    .line 7320
    invoke-static {p2, v1, p0, p1, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_1

    .line 7323
    :cond_1
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackTakePictureCost wrong time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", start time: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", now: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7323
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private tryDelayCapture()Z
    .locals 2

    .line 2219
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_light_on"

    .line 2220
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2221
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 2223
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->waitAEToCapture()V

    .line 2224
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->startScreenLight()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private tryEnableHHT()V
    .locals 2

    .line 7377
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->enhanceBeautyWithHHT()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    .line 7378
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontMuxCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 7379
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7380
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 7382
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPendingEnableHHT:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private uninstallIntentFilter()V
    .locals 4

    .line 3756
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mReceiverRegisterGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 3757
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    if-eqz v1, :cond_0

    .line 3758
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mXiaoAiControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 3760
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 3762
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unlockAEAF()V
    .locals 1

    const/4 v0, 0x0

    .line 3617
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    .line 3618
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz p0, :cond_0

    .line 3619
    invoke-virtual {p0, v0}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    :cond_0
    return-void
.end method

.method private updateHDR(Ljava/lang/String;)V
    .locals 1

    .line 7394
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 7395
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    if-eqz p1, :cond_0

    .line 7398
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 7399
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7400
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLyingSensorState(Z)V
    .locals 1

    .line 6837
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6838
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->setRotationIndicatorEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateMutexModeUI(ZZ)V
    .locals 2

    .line 2715
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2716
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 2721
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x4

    const v0, 0x7f0f0088

    const/4 v1, 0x2

    .line 2723
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    .line 2729
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->needUpdateThumbProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2730
    invoke-direct {p0, p2}, Lcom/android/camera/module/CameraModule;->updateThumbProgress(Z)V

    :cond_1
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 6

    .line 2812
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_scenemode_setting_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 2813
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2816
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    const/16 v3, 0xa3

    const-string v4, "off"

    .line 2817
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    .line 2819
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v5, 0xc2

    aput v5, v4, v2

    .line 2822
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem([I)V

    const/16 v4, 0xc1

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    aput v4, v0, v2

    .line 2824
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem([I)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    aput v4, v0, v2

    .line 2826
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem([I)V

    .line 2828
    :goto_0
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    .line 2830
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2831
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    new-array p0, v2, [I

    .line 2835
    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem([I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateStereoSettings(Z)V
    .locals 1

    .line 5428
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5430
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string p1, "pref_camera_hdr_key"

    const-string v0, "off"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 5432
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {p0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateThumbProgress(Z)V
    .locals 1

    .line 2779
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    .line 2780
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_0

    .line 2782
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    :cond_0
    return-void
.end method

.method private waitAEToCapture()V
    .locals 1

    .line 2207
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->startAEDetect()V

    .line 2208
    new-instance v0, Lcom/android/camera/module/CameraModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$4;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAEStableAction:Lcom/android/camera/module/CameraModule$AEStableAction;

    return-void
.end method

.method private writeImage([BI)V
    .locals 7

    const/4 v0, 0x0

    .line 1295
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->createJpegName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dng"

    .line 1296
    invoke-static {v1, v2}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1297
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1298
    :try_start_1
    sget-object v4, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write image to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with length: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1299
    invoke-virtual {v3, p1, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1300
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1302
    :try_start_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0, v1}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1304
    :goto_0
    :try_start_3
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1306
    :goto_1
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private writeOrientationToExif([BI)[B
    .locals 5

    .line 1738
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1739
    new-instance p0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 1740
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1741
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 1742
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->addOrientation(I)Z

    .line 1743
    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 1744
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 1745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1746
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset orientation takes "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1748
    sget-object p2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "Exception when add orientation EXIF tag"

    invoke-static {p2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 4

    .line 5548
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5549
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5552
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 5553
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const/4 v0, 0x0

    .line 5554
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    :goto_0
    return-void
.end method

.method protected applyMultiShutParameters(Z)V
    .locals 0

    return-void
.end method

.method public autoFocus()V
    .locals 2

    .line 4115
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 4118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    .line 4119
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v1, :cond_1

    .line 4120
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x2

    .line 4121
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    :cond_1
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .line 4144
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 4147
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4148
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 4149
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    const/4 v0, -0x1

    .line 4150
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    :cond_1
    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 0

    .line 3738
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    return-void
.end method

.method public capture()Z
    .locals 1

    .line 2199
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->tryDelayCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2202
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->captureInternal()Z

    move-result p0

    return p0
.end method

.method public checkDisplayOrientation()V
    .locals 2

    .line 4487
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 4488
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    .line 4489
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setCameraDisplayOrientation(I)V

    .line 4492
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    .line 4493
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, p0}, Lcom/android/camera/FocusManagerAbstract;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public closeCamera()V
    .locals 4

    .line 4452
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4453
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 4454
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->unlockAEAF()V

    .line 4455
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 4457
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    .line 4464
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4465
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    .line 4466
    invoke-virtual {v1, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    .line 4468
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 4469
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4470
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 4471
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4472
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4473
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 4474
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 4475
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 4476
    iput-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4477
    iput-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 4478
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 4480
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4481
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    :cond_2
    return-void
.end method

.method protected disableHandNight(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    return-void
.end method

.method public doLaterRelease()V
    .locals 2

    .line 7302
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "doLaterRelease"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7303
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x34

    .line 7304
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7306
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 7307
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    .line 7308
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseEffectProcessor()V

    .line 7309
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseMediaProviderClient()V

    .line 7310
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 7311
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraHolder;->release(Z)V

    return-void
.end method

.method public enableFakeThumbnail()Z
    .locals 2

    .line 5507
    invoke-static {}, Lcom/android/camera/Device;->isSupportFakeThumbnail()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5508
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 5513
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5517
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isAlgorithmEnable()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method protected enableHandNight(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    return-void
.end method

.method protected enterMutexMode()V
    .locals 5

    .line 4004
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4009
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4010
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 4014
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4015
    invoke-static {}, Lcom/android/camera/Util;->clearMemoryLimit()V

    .line 4019
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f027b

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 4020
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 4023
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "pref_camera_focus_mode_key"

    const-string v3, "pref_camera_coloreffect_key"

    .line 4024
    filled-new-array {v2, v1, v3, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4028
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    .line 4030
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v4, 0x7

    invoke-interface {v2, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    const/4 v2, 0x4

    const v4, 0x7f0f0477

    .line 4031
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    .line 4035
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "pref_camera_shader_coloreffect_key"

    .line 4036
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4037
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4039
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "pref_camera_exposure_key"

    .line 4040
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4041
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4043
    :cond_7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 4045
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 4046
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 4047
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    return-void

    .line 4005
    :cond_8
    :goto_0
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "camera module is paused!!!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected exitMutexMode()V
    .locals 5

    .line 3968
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3972
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 3973
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 3974
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 3975
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 3976
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 3977
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getLastMutexMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    .line 3980
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 3983
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0f027b

    .line 3984
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3983
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3985
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 3988
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 3991
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3993
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 3994
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    return-void

    .line 3969
    :cond_4
    :goto_1
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "exitMutexMode camera module is paused!!!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected exitWhiteBalanceLockMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public findQRCode()V
    .locals 0

    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 3

    .line 6843
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6844
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6845
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getMaxPictureSizeSafely(Ljava/util/List;)I

    move-result p0

    .line 6843
    invoke-static {v0, v1, p0}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 6847
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object p0

    return-object p0
.end method

.method protected getBurstCount()I
    .locals 2

    .line 2551
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    .line 2552
    sget p0, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    return p0

    .line 2553
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x7

    return p0

    .line 2555
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    if-eqz v0, :cond_2

    .line 2556
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "num-snaps-per-shutter"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2557
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 2559
    invoke-static {v0}, Lcom/android/camera/Util;->isMemoryRich(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mGroupShotTimes:I

    if-nez v0, :cond_4

    .line 2560
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getGroupShotNum()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method protected getBurstDelayTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getCameraRotation()I
    .locals 1

    .line 2571
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public getGroupShotNum()I
    .locals 2

    .line 6966
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6967
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x4

    .line 6968
    invoke-static {p0, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method protected getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5869
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object p0

    .line 5870
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5871
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected getMaxPictureSizeSafely(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)I"
        }
    .end annotation

    .line 1358
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getMaxPictureSize()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_4

    .line 1361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1362
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v1

    if-gt v2, p0, :cond_0

    .line 1363
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find the match picture size use the limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-nez p1, :cond_2

    .line 1369
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no picture size match limit, ignore the limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_1
    return p0

    :cond_4
    return v0
.end method

.method protected getMutexHdrMode(Ljava/lang/String;)I
    .locals 0

    const-string p0, "normal"

    .line 5202
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5207
    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0

    .line 5210
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "live"

    .line 5211
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected getParallelProcessingFileTitle()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRequestFlashMode()Ljava/lang/String;
    .locals 2

    .line 2410
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportSceneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2418
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "off"

    return-object p0

    .line 2422
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSuffix()Ljava/lang/String;
    .locals 1

    .line 2402
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2403
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->getSuffix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2846
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v1

    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, p0}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public handleDelayShutter()V
    .locals 4

    .line 3052
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3053
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3054
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3055
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3056
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3059
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3060
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleMultiSnapDone()V
    .locals 2

    .line 3706
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 3710
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/CameraModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$8;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3732
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restoreStatusAfterBurst()V

    .line 3734
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    return-void
.end method

.method public initGroupShot(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 6974
    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    return-void

    .line 6977
    :cond_0
    iget-object v1, v0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/groupshot/GroupShot;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6978
    :cond_1
    new-instance v1, Lcom/android/camera/groupshot/GroupShot;

    invoke-direct {v1}, Lcom/android/camera/groupshot/GroupShot;-><init>()V

    iput-object v1, v0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    .line 6981
    :cond_2
    iget v1, v0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isISPRotated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6982
    iget-object v2, v0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    iget v4, v0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6983
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6984
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6985
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6986
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v3, p1

    .line 6982
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    goto :goto_0

    .line 6988
    :cond_3
    iget-object v9, v0, Lcom/android/camera/module/CameraModule;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    iget v11, v0, Lcom/android/camera/module/CameraModule;->mGroupFaceNum:I

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6989
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v12, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6990
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v13, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6991
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v14, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6992
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v15, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v10, p1

    .line 6988
    invoke-virtual/range {v9 .. v15}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    :goto_0
    return-void
.end method

.method protected initializeAfterCameraOpen()V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 1015
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeZoom()V

    .line 1016
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeExposureCompensation()V

    .line 1017
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initAiSceneParser()V

    .line 1019
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initAIASDSetting()V

    .line 1021
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showTapToFocusToastIfNeeded()V

    .line 1022
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initializeCapabilities()V
    .locals 4

    .line 5612
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5613
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 5614
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "get init param from CameraDevice return null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5617
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5619
    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    const-string v3, "auto"

    .line 5618
    invoke-static {v3, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    .line 5620
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    .line 5621
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    .line 5622
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    .line 5623
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5624
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    .line 5623
    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    return-void
.end method

.method public initializeFirstTime()V
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1053
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    return-void
.end method

.method public initializeFocusManager()V
    .locals 7

    .line 4055
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 4056
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "mInitialParams is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4060
    :cond_0
    new-instance v6, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 4062
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 4063
    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/FocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v0, 0x0

    .line 4066
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4067
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 4069
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_3

    .line 4070
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 4071
    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v3

    .line 4070
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 4072
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    goto :goto_1

    .line 4077
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 4078
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    :goto_1
    return-void
.end method

.method protected isAiSceneEnabled()Z
    .locals 2

    .line 7405
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAiSceneEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontAiScene()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_0

    .line 7407
    invoke-static {}, Lcom/android/camera/Device;->isPortraitModeSupportAiScene()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xab

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isAutoRestartInNonZSL()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isBackBokehOn()Z
    .locals 0

    .line 6302
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isBackPortraitDynamicSpotOn()Z
    .locals 1

    .line 6306
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportCameraDynamicLightSpot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .line 6281
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCaptureIntent()Z
    .locals 0

    .line 6863
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    return p0
.end method

.method protected isDefaultManualExposure()Z
    .locals 2

    const v0, 0x7f0f029e

    .line 5863
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_iso_key"

    .line 5862
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0252

    .line 5865
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_exposuretime_key"

    .line 5864
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

.method protected isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 5875
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isDetectedHDR()Z
    .locals 3

    .line 6164
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6165
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7700(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    .line 6166
    invoke-static {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7800(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result p0

    if-ne v2, p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method protected isDetectedHHT()Z
    .locals 3

    .line 6153
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdNight()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 6154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7700(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    .line 6155
    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7800(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    .line 6156
    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7700(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v2, v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    .line 6157
    invoke-static {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7800(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result p0

    if-ne v2, p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isDoingAction()Z
    .locals 2

    .line 3537
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mScreenLightOn:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

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

.method protected isFaceBeautyMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isFrontBokehOn()Z
    .locals 1

    .line 6291
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6294
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6295
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result p0

    return p0

    .line 6297
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isFrontMirror()Z
    .locals 2

    .line 5984
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5988
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFrontMirror()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f03b5

    .line 5989
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isKeptBitmapTexture()Z
    .locals 0

    .line 5998
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    return p0
.end method

.method protected isLongShotMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMeteringAreaOnly()Z
    .locals 3

    .line 5825
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5828
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 5829
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v2, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "edof"

    .line 5830
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "fixed"

    .line 5831
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "infinity"

    .line 5832
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "manual"

    .line 5833
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "lock"

    .line 5834
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected isMultiSnapStopRequested()Z
    .locals 1

    .line 3686
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopState:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    sget-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->NORMAL:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isParallelProcessing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSceneMotion()Z
    .locals 1

    .line 6380
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7700(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 0

    .line 5844
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    return p0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .line 5839
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportFocusShoot()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportFocusShoot()Z
    .locals 1

    .line 5849
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string v0, "pref_camera_focus_shoot_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isGlobalSwitchOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isSupportSceneMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isZeroShotMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .line 6174
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6175
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6176
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6177
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public multiCapture()Z
    .locals 7

    .line 2449
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_9

    .line 2453
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2458
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v0, 0x7f0f046f

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 2459
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 2463
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2464
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2465
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2469
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2470
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v2, "ImageSaver is full, wait for a moment!"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    const v0, 0x7f0f0474

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return v1

    .line 2477
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa4

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_4

    .line 2479
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "configChanges is null, protocol maybe registering in non-UI thread."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0xc9

    aput v4, v3, v1

    const-string v4, "d"

    .line 2482
    invoke-interface {v0, v4, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->closeMutexElement(Ljava/lang/String;[I)V

    const/16 v0, 0x100

    .line 2486
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_5

    .line 2487
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v4

    .line 2490
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 2491
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mBurstSpeedController:Lcom/android/camera/module/CameraModule$BurstSpeedController;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->capture()V

    .line 2492
    sget-boolean v3, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v3, :cond_6

    .line 2493
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2496
    :cond_6
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isTestImageCaptureWithoutLocation()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v0, v4

    :cond_7
    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2498
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 2499
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2502
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 2503
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareMultiCapture()V

    .line 2504
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2505
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->saveStatusBeforeBurst()V

    .line 2507
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 2510
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mLastIsEffect:Z

    if-nez v0, :cond_8

    .line 2511
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    goto :goto_1

    .line 2513
    :cond_8
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 2514
    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    .line 2516
    :goto_1
    sget-object v0, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->NORMAL:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopState:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    .line 2517
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 2519
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v1, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    .line 2520
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    .line 2519
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2523
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb8

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;

    .line 2524
    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;->setSnapNumVisible(Z)V

    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needSetupPreview()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyError(I)V
    .locals 2

    .line 6939
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->notifyError(I)V

    .line 6941
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 6942
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xac

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 6944
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v1, 0x34

    .line 6945
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6948
    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitingSuperNightResult:Z

    .line 6949
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6950
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6952
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xc6

    .line 6953
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_2

    .line 6955
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 6958
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz p1, :cond_3

    .line 6959
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->doLaterRelease()V

    .line 6962
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .line 7335
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    if-eqz p0, :cond_0

    .line 7336
    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->releaseMakeupRender()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 4085
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4088
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_1

    .line 4090
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 4092
    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4095
    :cond_1
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p3, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4096
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4097
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string p1, "crop-temp"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 4098
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .line 4218
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4229
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v1, :cond_1

    return v2

    .line 4233
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 4237
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 4241
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 4243
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v1, :cond_6

    .line 4244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4245
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xac

    if-ne v3, v4, :cond_5

    .line 4246
    iget-wide v3, p0, Lcom/android/camera/module/CameraModule;->mLastBackPressedTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 4247
    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mLastBackPressedTime:J

    .line 4248
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v0, 0x7f0f0089

    invoke-static {p0, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    return v2

    .line 4251
    :cond_4
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result p0

    return p0

    :cond_5
    return v2

    .line 4258
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 4261
    :cond_7
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBeautyParameterChanged()V
    .locals 2

    .line 7352
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7356
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setBeautyParams()V

    .line 7357
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 7359
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 7353
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "skip beauty parameter change"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBeautyStatusChanged(Z)V
    .locals 0

    .line 7347
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BeautyHandler;->onBeautyStatusChanged(Z)V

    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_6

    .line 544
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 547
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "on Receive voice control broadcast action intent"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {p2}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getVoiceControlAction()Ljava/lang/String;

    move-result-object v0

    .line 550
    iput-object p2, p0, Lcom/android/camera/module/CameraModule;->mBroadcastIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    .line 551
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x4bbb5326    # 2.4553036E7f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 553
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    const/4 v0, 0x0

    .line 554
    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mBroadcastIntent:Landroid/content/Intent;

    .line 560
    :goto_1
    invoke-static {p2}, Lcom/android/camera/CameraIntentManager;->removeInstance(Landroid/content/Intent;)V

    goto :goto_2

    .line 561
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    invoke-static {}, Lcom/android/camera/storage/Storage;->isCurrentStorageIsSecondary()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 563
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchToPhoneStorage()V

    .line 566
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onCameraMetaData([BLandroid/hardware/Camera;)V
    .locals 1

    .line 6334
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 6335
    invoke-virtual {p2}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-boolean p2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1a

    .line 6336
    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6337
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/animation/AnimationMonitor;->hasAnimationRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6338
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setData([B)V

    :cond_0
    return-void
.end method

.method protected onCameraOpened()V
    .locals 3

    .line 2657
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "onCameraOpened: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2659
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "the module is already departed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2667
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    .line 2668
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeFocusManager()V

    .line 2669
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareUIByPreviewSize()V

    const/4 v0, -0x1

    .line 2670
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2672
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2674
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->checkDisplayOrientation()V

    .line 2680
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/voiceassist/XiaoAiHelper;->shouldCountDownFromAction()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 2681
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extras.EXTRAS_CAPTURE_ACTION_DONE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2682
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2683
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 2687
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 2697
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    .line 2698
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2699
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    .line 2700
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2701
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 3

    .line 5326
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5333
    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5334
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5333
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5336
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5339
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    goto :goto_0

    .line 5341
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 5342
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5345
    :goto_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    const/4 p1, 0x4

    .line 5347
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 5348
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    .line 5349
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public onCameraStartPreview()V
    .locals 0

    return-void
.end method

.method public onCameraSwitched()V
    .locals 5

    .line 5404
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 5405
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "camera is already closed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5408
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BeautyHandler;->onCameraSwitched(Z)V

    .line 5409
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    const/4 v0, 0x1

    .line 5410
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 5411
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareUIByPreviewSize()V

    .line 5412
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/FocusManagerAbstract;->setMirror(Z)V

    .line 5413
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5414
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 5415
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 5416
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    .line 5417
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 5418
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 5419
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V

    .line 5420
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    .line 5421
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateModePreference()V

    .line 5422
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    .line 5424
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(II)V
    .locals 3

    .line 2599
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2600
    new-instance v0, Lcom/android/camera/module/BeautyHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BeautyHandler;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    .line 2602
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    .line 2609
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->parseIntent()V

    .line 2613
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/zxing/QRCodeManager;->onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;)V

    .line 2615
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeMutexMode()V

    .line 2617
    new-instance v0, Lcom/android/camera/AudioCaptureManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/AudioCaptureManager;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    const/4 v0, 0x0

    .line 2619
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 2620
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/module/BeautyHandler;->onCreate(IILcom/android/camera/Camera;)V

    .line 2621
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onCameraOpened()V

    .line 2622
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1, p0}, Lcom/android/camera/MutexModeManager;->setMutexModeChangeListener(Lcom/android/camera/MutexModeManager$ChangeListener;)V

    .line 2624
    invoke-static {}, Lcom/android/camera/Device;->isSupportGoogleLens()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 2625
    new-instance p1, Lcom/google/lens/sdk/LensApi;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {p1, p2}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mLensApi:Lcom/google/lens/sdk/LensApi;

    .line 2626
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mLensApi:Lcom/google/lens/sdk/LensApi;

    new-instance p2, Lcom/android/camera/module/CameraModule$7;

    invoke-direct {p2, p0}, Lcom/android/camera/module/CameraModule$7;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {p1, p2}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 5081
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 5082
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5083
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5085
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->hideToast()V

    .line 5090
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->cancelRunningInvisibleWatermarkTask()V

    .line 5091
    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    const/4 v0, 0x0

    .line 5092
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mNeedSealCameraUUID:Z

    .line 5093
    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraUUIDWatermarkImageData:[B

    .line 5094
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5097
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isLaunchedByMainIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->isMainIntentActivityLaunched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5098
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v2, "should not do later release to avoid release the camera hold by main activity"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5100
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->doLaterRelease()V

    .line 5103
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0}, Lcom/android/camera/module/BeautyHandler;->onDestroy()V

    .line 5104
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    .line 5105
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/MutexModeManager;->setMutexModeChangeListener(Lcom/android/camera/MutexModeManager$ChangeListener;)V

    return-void
.end method

.method public onFaceBeautySwitched(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "pref_camera_face_beauty_advanced_key"

    goto :goto_0

    :cond_0
    const-string p1, "pref_camera_face_beauty_key"

    .line 7364
    :goto_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setFaceBeautySwitch(Ljava/lang/String;)V

    .line 7366
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2

    .line 1142
    iget-boolean p2, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    const/4 v0, 0x1

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1146
    :cond_0
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object p2

    .line 1148
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mFoundFaces:[Landroid/hardware/Camera$Face;

    .line 1151
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    const v1, 0xface

    if-ne p1, v1, :cond_1

    .line 1153
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-eqz p1, :cond_3

    .line 1154
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p1, 0x3

    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFaces(I[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    goto :goto_0

    .line 1165
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1, v0, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFaces(I[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1169
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1170
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "continuous-picture"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1171
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_3
    :goto_0
    return-void

    .line 1143
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearIndicator(I)V

    return-void
.end method

.method public onFilterChanged(II)V
    .locals 0

    .line 534
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string p2, "pref_camera_shader_coloreffect_key"

    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/SettingsOverrider;->removeSavedSetting(Ljava/lang/String;)V

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 539
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    return-void
.end method

.method public onFocusAreaChanged(II)V
    .locals 0

    .line 7273
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz p0, :cond_0

    .line 7274
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManager;->triggerFocusOnly(II)V

    :cond_0
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1

    .line 5855
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->couldEnableObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5856
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->initializeObjectTrack(Landroid/graphics/RectF;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onGradienterSwitched(Z)V
    .locals 1

    .line 2926
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mIsGradienterOn:Z

    .line 2927
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/SensorStateManager;->setGradienterEnabled(Z)V

    .line 2928
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public onHostStopAndNotifyActionStop()V
    .locals 3

    .line 7280
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7282
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSuperNightDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 7284
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mWaitingSuperNightResult:Z

    if-eqz v0, :cond_2

    .line 7285
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mWaitingSuperNightResult:Z

    .line 7286
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc6

    .line 7287
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p0, :cond_2

    .line 7289
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x42

    if-eq p1, v0, :cond_7

    const/16 v0, 0x50

    if-eq p1, v0, :cond_5

    const/16 v0, 0x57

    const/16 v2, 0x58

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 4320
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 4328
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 4325
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 4334
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 4295
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4296
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    :cond_6
    return v1

    .line 4302
    :cond_7
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 4303
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p1

    if-eqz p1, :cond_8

    return v1

    .line 4306
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreBottom()V

    .line 4307
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4308
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x1e

    .line 4309
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    goto :goto_3

    :cond_9
    const/16 p1, 0x28

    .line 4312
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    :cond_a
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x58

    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v3, 0x19

    if-eq p1, v3, :cond_0

    const/16 v3, 0x57

    if-eq p1, v3, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 4344
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 4351
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 4348
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 4358
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 4359
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 4364
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongPress(II)V
    .locals 1

    .line 3350
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3353
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onSingleTapUp(II)V

    .line 3356
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLongPress mCameraState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3358
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->lockAEAF()V

    .line 3360
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportFocusShoot()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->is3ALocked()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x50

    .line 3361
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 3362
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3364
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->performHapticFeedback(I)V

    return-void
.end method

.method public onMeteringAreaChanged(II)V
    .locals 1

    .line 7255
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_3

    .line 7256
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->updateExposure(II)V

    .line 7257
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p2, :cond_3

    .line 7258
    iget-boolean p2, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    if-eqz p2, :cond_0

    .line 7259
    iget-object p2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 7261
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    if-eqz p1, :cond_1

    .line 7262
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object p2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p2}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 7264
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz p1, :cond_2

    .line 7265
    sget-object p1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 7267
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    return-void
.end method

.method public onMutexModeChanged(II)V
    .locals 0

    if-nez p2, :cond_0

    .line 7372
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->tryEnableHHT()V

    :cond_0
    return-void
.end method

.method public onObjectStable()V
    .locals 3

    .line 5886
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5887
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 5888
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_capture_when_stable_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5890
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "Object is Stable, call onShutterButtonClick to capture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3c

    .line 5891
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(II)V
    .locals 1

    .line 3113
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsGradienterOn:Z

    if-nez v0, :cond_0

    .line 3114
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->setOrientation(II)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 3840
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->trackLostPhotos()V

    .line 3841
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3842
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 3844
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 3852
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 3854
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3855
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 3856
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3858
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelContinuousShot()V

    .line 3863
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 3864
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    if-eqz v0, :cond_2

    .line 3865
    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 3867
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    .line 3868
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    .line 3869
    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateLyingSensorState(Z)V

    .line 3870
    invoke-direct {p0, v3}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 3874
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_3

    .line 3875
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3878
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 3880
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3881
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    goto :goto_0

    .line 3882
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3883
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    .line 3884
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 3886
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3888
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 3891
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3892
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseEffectProcessor()V

    .line 3894
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->uninstallIntentFilter()V

    .line 3896
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_9

    .line 3897
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 3902
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->execPendingEventInHandle()V

    .line 3903
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3905
    iput v3, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 3906
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3907
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 3909
    invoke-static {}, Lcom/android/camera/Device;->isSupportGoogleLens()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    .line 3910
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/module/CameraModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$9;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3931
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    const/4 v0, -0x1

    .line 3932
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 3933
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    .line 3934
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    .line 3935
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    if-eqz v0, :cond_c

    .line 3937
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewHeight()I

    move-result v0

    .line 3938
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v1

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 3940
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 3942
    :cond_b
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    .line 3946
    :cond_c
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lez v1, :cond_d

    if-ge v1, v0, :cond_d

    .line 3948
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/storage/Storage;->deleteImage(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onPortraitZoomChanged()V
    .locals 1

    .line 5317
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5318
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    const/4 v0, 0x0

    .line 5319
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 5320
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->animatePortraitZoomCopyTexture()V

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 7342
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BeautyHandler;->onPreviewFrame([BLandroid/hardware/Camera;)V

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 3

    .line 513
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewLayoutChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/graphics/Rect;)V

    .line 515
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 517
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v2

    .line 516
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 518
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    return-void
.end method

.method public onPreviewPixelsRead([BII)V
    .locals 2

    .line 5483
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5486
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateShutter()V

    .line 5488
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 5489
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 5491
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mShootOrientation:I

    iget p3, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    sub-int/2addr p1, p3

    .line 5492
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 5493
    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5495
    rem-int/lit16 p3, p1, 0xb4

    if-nez p3, :cond_1

    move p1, v0

    :cond_1
    const/4 p3, 0x0

    .line 5501
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontMirror()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p3, p2, p1, v0}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object p1

    .line 5502
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    .line 5503
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x2b

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 5

    .line 526
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "onPreviewSizeChanged: %dx%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz p0, :cond_0

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 1

    .line 5538
    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    if-ne p1, v0, :cond_0

    .line 5539
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->animateSwitchCamera()V

    .line 5540
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5541
    :cond_0
    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->PORTRAIT_ZOOM:Lcom/android/camera/CameraScreenNail$CopyReason;

    if-ne p1, v0, :cond_1

    .line 5542
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 3767
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 3768
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3771
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3772
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 3774
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->init()V

    .line 3775
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->initEffectCropView()V

    .line 3777
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3778
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    .line 3779
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    .line 3780
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    :cond_2
    const-wide/16 v2, 0x0

    .line 3784
    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    .line 3785
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 3786
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 3788
    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    if-eqz v2, :cond_3

    .line 3789
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resumePreview()V

    .line 3791
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    .line 3793
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_4

    .line 3794
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 3798
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-nez v2, :cond_5

    .line 3799
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3801
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeSecondTime()V

    .line 3803
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 3804
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 3806
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_6

    .line 3807
    invoke-virtual {v2, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 3808
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 3809
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 3810
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 3811
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 3813
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    .line 3814
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BeautyHandler;->onCameraSwitched(Z)V

    .line 3816
    invoke-static {}, Lcom/android/camera/Device;->isSupportGoogleLens()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_7

    .line 3817
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3820
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopScreenLightDirectly()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 3

    const/4 v0, 0x0

    .line 3197
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mKeepBitmapTexture:Z

    .line 3198
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3199
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeVisible()V

    const/4 v0, 0x1

    .line 3200
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 3202
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    goto :goto_0

    .line 3205
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3206
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 0

    .line 3214
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 3067
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 3068
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_delay_capture_key"

    .line 3071
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3072
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    goto :goto_1

    :cond_1
    const-string v0, "pref_focus_position_key"

    .line 3073
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3074
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->is3ALocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3075
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    .line 3076
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->unlockAEAF()V

    .line 3078
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setFocusPosition()V

    goto :goto_1

    .line 3080
    :cond_3
    sget-object v0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3081
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetZoom()V

    .line 3082
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 3083
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result p1

    const/16 v0, 0x28

    if-eqz p1, :cond_4

    .line 3084
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const-string v1, "off"

    const-string v2, "pref_camera_flashmode_key"

    const-string v3, "pref_camera_hdr_key"

    filled-new-array {v2, v1, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 3088
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3089
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3092
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {p1}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 3094
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const p1, 0x7f0f00e2

    .line 3095
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->hideTipMessage(I)V

    .line 3101
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    :goto_1
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 1

    .line 5293
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 5296
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 4

    .line 3468
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3472
    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3474
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3475
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getCountDownTimes()I

    move-result v0

    .line 3476
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->startCount(II)V

    return-void

    .line 3479
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3481
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 3482
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 3484
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3485
    sget-object p0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough space or storage not ready. remaining="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3486
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3485
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3489
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->shouldStopShot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3490
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "ImageSaver is full, wait for a moment!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    const p1, 0x7f0f0474

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void

    .line 3495
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 3497
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isObjectTrackFailed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3498
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 3500
    :cond_4
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v0, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    .line 3501
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needAutoFocusBeforeCapture()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_0

    :cond_5
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    .line 3505
    :cond_6
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne p1, v2, :cond_8

    .line 3506
    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3507
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3508
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    :cond_7
    return-void

    .line 3512
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    .line 3513
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 3514
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    .line 3515
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/FocusManager;->prepareCapture(ZI)V

    .line 3516
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/FocusManager;->doSnap()V

    .line 3517
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3518
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 2

    .line 3369
    sget-object p2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonFocus pressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-nez p1, :cond_6

    .line 3371
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    .line 3372
    iput-boolean p2, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    return-void

    .line 3375
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3376
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 3379
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->cancelMultiSnapPending()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3382
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_3

    .line 3383
    sget-object p1, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->REQUEST:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStopState:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    return-void

    .line 3386
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    if-eqz v0, :cond_7

    .line 3387
    iput-boolean p2, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 3388
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mLongClickCancelOut:Z

    if-eqz p1, :cond_5

    .line 3389
    :cond_4
    iput-boolean p2, p0, Lcom/android/camera/module/CameraModule;->mLongClickCancelOut:Z

    .line 3390
    iput-boolean p2, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    .line 3391
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 3392
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->cancelAutoFocus()V

    :cond_5
    return-void

    .line 3397
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3398
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p2}, Lcom/android/camera/FocusManager;->doMultiSnap(Z)V

    .line 3402
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    .line 3407
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->canTakePicture()Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_b

    .line 3412
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSwitchZeroShotMode()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x2

    .line 3413
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 3415
    :cond_a
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 3417
    :cond_b
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    :cond_c
    :goto_0
    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 6

    .line 3561
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "onShutterButtonLongClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3565
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v3, 0xac

    if-eq v0, v3, :cond_2

    .line 3568
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCountDownMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 3570
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3571
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3572
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3573
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v3, "pref_camera_hand_night_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3574
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v3, "pref_camera_scenemode_setting_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3575
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3576
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3577
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3578
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3579
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    .line 3580
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    .line 3581
    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingMultiCapture:Z

    if-nez v0, :cond_2

    .line 3584
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3585
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3586
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    :cond_1
    return v2

    .line 3589
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    return v1

    .line 3596
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 3597
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    .line 3598
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 3599
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 3600
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 3601
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    :cond_4
    :goto_0
    return v1
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 3

    .line 3423
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonLongClickCancelIn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p1, 0x1

    .line 3424
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mLongClickCancelOut:Z

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 3425
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 7

    .line 4157
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 4158
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    .line 4160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 4161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 4162
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v2, v6

    const/4 v3, 0x5

    aput-object p0, v2, v3

    const-string v3, "onSingleTapUp: %s %s/ %s/ %s/ %s/ %s/"

    .line 4157
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 4168
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4169
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v5, :cond_5

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v6, :cond_5

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4177
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 4178
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4182
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->unlockAEAF()V

    .line 4183
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 4186
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-nez v0, :cond_2

    return-void

    .line 4198
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4201
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_4

    .line 4202
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 4204
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 4205
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showObjectTrackToastIfNeeded()V

    .line 4206
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 4207
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 4208
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget p2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    .line 4211
    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz p1, :cond_5

    .line 4212
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 3175
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 3176
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3177
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseResources()V

    .line 3179
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3180
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->releaseMediaProviderClient()V

    .line 3182
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/BeautyHandler;->onStop(Lcom/android/camera/CameraManager$CameraProxy;)V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 3187
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 3188
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3189
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_0
    return-void
.end method

.method public onTiltShiftSwitched(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2934
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetEvValue()V

    .line 2936
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 2937
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_1

    .line 2938
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    .line 2939
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setEvAdjustable(Z)V

    :cond_1
    return-void
.end method

.method public onTrackShutterButtonMissTaken(J)V
    .locals 3

    .line 7204
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getCameraModeName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u6a21\u5f0f"

    .line 7207
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x64

    .line 7208
    div-long/2addr p1, v1

    mul-long/2addr p1, v1

    const-string p0, "capture"

    const-string v1, "picture_miss_taken"

    invoke-static {p0, v1, p1, p2, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onTrackShutterButtonTaken(J)V
    .locals 3

    .line 7215
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    .line 7216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\u6a21\u5f0f"

    .line 7217
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x64

    .line 7218
    div-long/2addr p1, v1

    mul-long/2addr p1, v1

    const-string p0, "capture"

    const-string v1, "picture_taken_gap"

    invoke-static {p0, v1, p1, p2, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method protected openSettingActivity()V
    .locals 3

    .line 5183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5184
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5186
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const-string v2, "from_where"

    .line 5185
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5187
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    const-string v2, "IsCaptureIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5190
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":miui:starting_window_label"

    .line 5189
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5192
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "StartActivityWhenLocked"

    .line 5193
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5195
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5196
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 5198
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->trackGotoSettings()V

    return-void
.end method

.method protected performVolumeKeyClicked(Ljava/lang/String;IZ)V
    .locals 1

    .line 4369
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    .line 4374
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4377
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreBottom()V

    .line 4378
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x2

    .line 4379
    invoke-virtual {p0, v0, p2}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    const p3, 0x7f0f037b

    .line 4380
    invoke-virtual {p0, p3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p3, 0x14

    if-eqz p1, :cond_3

    .line 4381
    invoke-direct {p0, p2, p3}, Lcom/android/camera/module/CameraModule;->startCount(II)V

    goto :goto_0

    .line 4383
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 4387
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 4388
    iput-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_7

    .line 4391
    iget-boolean p1, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    if-nez p1, :cond_7

    .line 4392
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 4395
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    .line 4396
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mVolumeLongPress:Z

    .line 4397
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateImageTitle:Z

    :cond_7
    :goto_0
    return-void
.end method

.method protected playAnimationBeforeCapture()Z
    .locals 1

    .line 2191
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2192
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isAutoRestartInNonZSL()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v0, :cond_1

    .line 2193
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNeedComposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result p0

    if-nez p0, :cond_1

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

.method public playSound(I)V
    .locals 1

    .line 2583
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 2585
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    :cond_1
    return-void
.end method

.method public portraitZoomSwitching()Z
    .locals 1

    .line 5312
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingPortraitZoom:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

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

.method protected prepareCapture()V
    .locals 0

    .line 2567
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateWaterMark()V

    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 1

    .line 2540
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2541
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initAIASDSetting()V

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateWaterMark()V

    const/4 v0, 0x1

    .line 2544
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->applyMultiShutParameters(Z)V

    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 4

    const/4 v0, 0x0

    .line 5371
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->updateStereoSettings(Z)V

    .line 5372
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->hideTipMessage(I)V

    .line 5373
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5374
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    .line 5376
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 5377
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 5379
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    const/4 v1, -0x1

    .line 5381
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 5383
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    .line 5384
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetGradienter()V

    .line 5385
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetFaceBeautyMode()V

    .line 5386
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->updateExitButton(Z)V

    .line 5387
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 5388
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 5389
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 5391
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_1

    .line 5393
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideSlideView()V

    .line 5395
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearIndicator(I)V

    .line 5396
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    .line 5397
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 5399
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->prepareSwitchCamera()V

    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 11

    .line 5801
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5804
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5805
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    const/4 v10, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v10, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 5806
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSoundPlayTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtonClickTime:J

    const-wide/16 v6, 0x3e8

    move-wide v2, v8

    .line 5807
    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    const-wide/16 v6, 0x1f4

    move-wide v2, v8

    .line 5808
    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v10

    :cond_3
    return v1
.end method

.method public registerProtocol()V
    .locals 4

    .line 469
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 470
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 471
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 472
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 473
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 474
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMiLens()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportGoogleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 477
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    .line 489
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xac

    if-ne v0, v1, :cond_4

    .line 490
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xc6

    aput v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0xa4
        0xae
    .end array-data
.end method

.method protected removeHandlerMessages()V
    .locals 2

    .line 3832
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->execPendingEventInHandle()V

    .line 3833
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 3834
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3835
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestRender()V
    .locals 0

    return-void
.end method

.method protected resetFaceBeautyMode()V
    .locals 0

    return-void
.end method

.method protected resetMetaDataManager()V
    .locals 1

    .line 3034
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3035
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->reset()V

    :cond_0
    return-void
.end method

.method public resetMutexModeManually()V
    .locals 0

    .line 5477
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    .line 5478
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneData()V

    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 3

    .line 5638
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 5640
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez p0, :cond_1

    .line 5642
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p0

    if-nez p0, :cond_1

    .line 5643
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result p0

    if-nez p0, :cond_1

    .line 5644
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected sendOpenFailMessage()V
    .locals 1

    .line 6181
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    .line 2427
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2428
    sget-object p1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p1, p0, p2}, Lcom/android/camera/CameraSettings;->setAutoExposure(Lcom/android/camera/hardware/CameraHardwareProxy;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setBeautyParams()V
    .locals 8

    .line 6867
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6868
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v0

    .line 6869
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x19

    const-string v4, "4"

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    if-ne v1, v3, :cond_5

    :cond_0
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 6871
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v5

    if-eq v1, v5, :cond_5

    .line 6872
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraPortraitWithFaceBeauty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 6873
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6874
    invoke-static {}, Lcom/android/camera/CameraSettings;->hasBeautyMenuInBackPortraitMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6876
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    goto :goto_0

    .line 6878
    :cond_1
    sget-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6879
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "reset face beauty level from close to low for portrait rear camera mode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6882
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    goto :goto_0

    .line 6886
    :cond_2
    sget-object v0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    .line 6888
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6889
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v5, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyVersion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 6891
    :cond_4
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v5, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 6892
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setStillBeautify1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6895
    :cond_5
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6896
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 6897
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6898
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setLeagcyFaceBeautyAdvParams()V

    goto :goto_3

    .line 6899
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupport3DFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6900
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->supportAdvanceBeautyFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 6903
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->apply3DBeautyParam(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_3

    .line 6901
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->apply3DBeautyParam(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_3

    .line 6906
    :cond_9
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/camera/Device;->supportAdvanceBeautyFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 6910
    :cond_a
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyVersion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 6911
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->clearFaceBeautyAdvParams()V

    goto :goto_3

    .line 6907
    :cond_b
    :goto_2
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautifyVersion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 6908
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setFaceBeautyAdvParams()V

    .line 6914
    :goto_3
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStillBeautify2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 6915
    :cond_c
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_f

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_d

    goto :goto_4

    :cond_d
    const/16 v1, 0xab

    if-ne v0, v1, :cond_11

    .line 6923
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6924
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6925
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->clearFaceBeautyAdvParams()V

    .line 6927
    :cond_e
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyCloseValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 6928
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStillBeautify4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 6916
    :cond_f
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6917
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->clearFaceBeautyAdvParams()V

    .line 6919
    :cond_10
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    if-eq v0, v3, :cond_11

    .line 6920
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyCloseValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 6921
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStillBeautify3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_5
    return-void
.end method

.method public setCameraParameters(I)V
    .locals 1

    .line 5112
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5122
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 5125
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 5129
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 5130
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mSetCameraParameter:I

    .line 5133
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected setCameraParametersWhenIdle(I)V
    .locals 3

    .line 5160
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 5161
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5164
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    return-void

    .line 5166
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5167
    iget p1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 5168
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->checkRestartPreview()V

    .line 5169
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mRestartPreview:Z

    .line 5170
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 5171
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateSceneModeUI()V

    .line 5172
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 5173
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    goto :goto_0

    .line 5175
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5176
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected setCameraState(I)V
    .locals 3

    .line 2176
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2185
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2182
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    :goto_0
    return-void
.end method

.method public setDeparted()V
    .locals 0

    .line 4127
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    .line 4128
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onDeparted()V

    return-void
.end method

.method public setFocusParameters()V
    .locals 2

    .line 2576
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2577
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    :cond_0
    return-void
.end method

.method protected setFocusPosition()V
    .locals 3

    .line 3106
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    .line 3107
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method protected setManualParameters()V
    .locals 0

    return-void
.end method

.method protected setMetaCallback(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6348
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eq v2, v1, :cond_2

    xor-int/2addr v0, v2

    .line 6349
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    .line 6350
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v2, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    .line 6353
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSetMetaCallback:Z

    if-eqz v0, :cond_3

    .line 6354
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetFilter()V

    .line 6355
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setType(I)V

    :cond_3
    if-nez v1, :cond_4

    const/4 p1, -0x1

    .line 6358
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    .line 6359
    invoke-static {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7700(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 6360
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7900(Lcom/android/camera/module/CameraModule$MetaDataManager;)V

    :cond_4
    return-void
.end method

.method protected setPreviewCallback()V
    .locals 0

    .line 7016
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mBeautyHandler:Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->setPreviewCallback()V

    return-void
.end method

.method protected setTimeWatermarkIfNeed()V
    .locals 2

    .line 6185
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6186
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/Util;->getTimeWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setupPreview()V
    .locals 7

    .line 1311
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    .line 1315
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1316
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1318
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1319
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    goto :goto_2

    .line 1321
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_3

    .line 1322
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1324
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/camera/FocusManager;->resetAfterCapture(Z)V

    .line 1325
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mLongPressedAutoFocus:Z

    const/4 v1, -0x1

    .line 1326
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1329
    :goto_2
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    if-eqz v1, :cond_6

    .line 1330
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1a

    const-wide/16 v5, 0x258

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1331
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mNeedAutoFocus:Z

    .line 1333
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1334
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1335
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 1337
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result v0

    if-lez v0, :cond_8

    .line 1338
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstDelayTime()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 1341
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1345
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getLastFocusFrom()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 1346
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 1348
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    :cond_a
    :goto_3
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 2

    .line 7296
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    const v0, 0x7f0f0252

    .line 7298
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_exposuretime_key"

    .line 7297
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->isDefaultPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startAiLens()V
    .locals 4

    .line 1401
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/CameraModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$3;-><init>(Lcom/android/camera/module/CameraModule;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startDelayedCaptureMessage(II)V
    .locals 3

    .line 5789
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5791
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 5793
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    .line 5795
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 5796
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public startFaceDetection()V
    .locals 3

    .line 1103
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_2

    .line 1107
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 1108
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 1109
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isAdjustingObjectView()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 1113
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 1114
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setActiveIndicator(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1116
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 1117
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startObjectTracking()V
    .locals 3

    .line 5903
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5904
    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 5909
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 5910
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 5911
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    .line 5912
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setActiveIndicator(I)V

    .line 5913
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5916
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5918
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    .line 5919
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "off"

    .line 5920
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5923
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    const/16 v1, 0xa3

    .line 5924
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    const-string v0, "pref_camera_flashmode_key"

    .line 5925
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 5928
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5930
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 5931
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startObjectTracking rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5932
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFocusRectInPreviewFrame()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->startObjectTrack(Landroid/graphics/RectF;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 5

    .line 4499
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4509
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4510
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    .line 4513
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 4516
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_3

    .line 4518
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4519
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 4523
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->checkDisplayOrientation()V

    .line 4524
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 4525
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_5

    .line 4528
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4529
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4531
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->unlockAEAF()V

    :cond_5
    const/4 v0, -0x1

    .line 4534
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 4535
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setPreviewTexture()V

    .line 4536
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 4538
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    const/4 v0, 0x1

    .line 4540
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 4542
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_7

    .line 4543
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mXiaoAiHelper:Lcom/android/camera/voiceassist/XiaoAiHelper;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/camera/voiceassist/XiaoAiHelper;->shouldCountDownFromAction()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4545
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4546
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "android.intent.extras.EXTRAS_CAPTURE_ACTION_DONE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 4548
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_0
    return-void

    .line 4500
    :cond_8
    :goto_1
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 3

    .line 1123
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_3

    .line 1128
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_2

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    :cond_2
    const/4 v0, 0x0

    .line 1132
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 1133
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setActiveIndicator(I)V

    .line 1134
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1135
    iput-object v2, p0, Lcom/android/camera/module/CameraModule;->mFoundFaces:[Landroid/hardware/Camera$Face;

    .line 1136
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->updateFaceView(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public stopObjectTracking(Z)V
    .locals 4

    .line 5937
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5940
    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopObjectTracking mObjectTrackingStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " restartFD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 5942
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getActiveIndicator()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 5943
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->onStopObjectTrack()V

    :cond_1
    return-void

    .line 5947
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 5948
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    .line 5949
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setActiveIndicator(I)V

    .line 5950
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 5951
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopObjectTrack()V

    .line 5952
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isAdjustingObjectView()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 5953
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    .line 5958
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 5959
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 5961
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 5962
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 5965
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->onStopObjectTrack()V

    :cond_4
    if-eqz p1, :cond_5

    .line 5968
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    :cond_5
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 4558
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4559
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 4561
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 4562
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v2, "stopPreview"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 4564
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 4565
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 4567
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz p0, :cond_2

    .line 4568
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    :cond_2
    return-void
.end method

.method protected trackModeCustomInfo(I)V
    .locals 2

    .line 7041
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    .line 7042
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->trackManualInfo(I)V

    goto :goto_0

    .line 7043
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7044
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->trackBeautyInfo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected tryEnableFrontHhtEnhance()V
    .locals 2

    .line 6365
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportFrontFlashEnhance()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6366
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6367
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableHandNight(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 6369
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->access$7700(Lcom/android/camera/module/CameraModule$MetaDataManager;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6370
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableHandNight(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 6372
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->disableHandNight(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    .line 5814
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5815
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    if-eqz v0, :cond_0

    .line 5816
    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    :cond_0
    const/4 v0, 0x0

    .line 5818
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsCountDown:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 497
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 498
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 499
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 500
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 501
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 502
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMiLens()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportGoogleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 505
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public updateAIASDPreference()V
    .locals 2

    .line 6112
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    const/4 v0, 0x0

    .line 6113
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mLatestFaceScene:I

    .line 6114
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCurrentAiScene:I

    .line 6115
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mParsedAiScene:I

    .line 6116
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mAiSceneEnabled:Z

    .line 6118
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule;->setAiSceneEffect(I)V

    .line 6119
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAiSceneEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6121
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hideSceneSelector()V

    .line 6122
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateHDRPreference()V

    .line 6123
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateFlashPreference()V

    .line 6125
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected updateASD(Ljava/lang/String;)V
    .locals 1

    .line 3040
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3041
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateBokehPreference()V
    .locals 2

    .line 6087
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 6088
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontBokehOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6089
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6090
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 6092
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6095
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f0f0072

    .line 6096
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->hideTipMessage(I)V

    .line 6098
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackBokehOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6099
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6100
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 6102
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 6105
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f0f0060

    .line 6106
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->hideTipMessage(I)V

    :goto_1
    return-void
.end method

.method protected updateCameraParametersInitialize()V
    .locals 2

    .line 4573
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4581
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4583
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4584
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 4587
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 4591
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 4592
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4593
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "video-stabilization"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 13

    .line 4601
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto/16 :goto_19

    .line 4607
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    if-eqz v1, :cond_1

    .line 4608
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 4611
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    .line 4612
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 4615
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 4617
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pictureSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_6

    .line 4619
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 4620
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Lcom/android/camera/PictureSize;->width:I

    if-ne v4, v5, :cond_3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    iget v4, v0, Lcom/android/camera/PictureSize;->height:I

    if-eq v3, v4, :cond_4

    .line 4621
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4622
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 4625
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, v0, Lcom/android/camera/PictureSize;->width:I

    iget v5, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_0

    .line 4633
    :cond_5
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v3, "get null pictureSize"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 4636
    :cond_6
    :goto_0
    sget-object v3, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    .line 4637
    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v6, v0, Lcom/android/camera/PictureSize;->width:I

    iget v7, v0, Lcom/android/camera/PictureSize;->height:I

    .line 4638
    invoke-static {v6, v7}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v6

    float-to-double v6, v6

    .line 4637
    invoke-static {v4, v5, v3, v6, v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 4639
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 4640
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v5

    .line 4641
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 4642
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 4645
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4646
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4648
    :cond_7
    iget v4, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    if-eq v4, v5, :cond_8

    .line 4649
    iput v5, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 4650
    iget-boolean v4, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4651
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    .line 4655
    :cond_8
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    .line 4656
    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    const/16 v3, 0x15

    .line 4658
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v4, :cond_a

    .line 4662
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v3

    .line 4663
    iget v4, v0, Lcom/android/camera/PictureSize;->width:I

    int-to-double v4, v4

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 4665
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 4666
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 4667
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 4670
    :cond_9
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thumbnailSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 4676
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v3

    const-string v4, "hdr"

    const-string v5, "auto"

    if-eqz v3, :cond_b

    .line 4677
    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 4678
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4679
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 4680
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4681
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4682
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_1

    :cond_b
    const-string v3, "pref_camera_scenemode_setting_key"

    .line 4684
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 4685
    iput-object v5, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto :goto_1

    .line 4687
    :cond_c
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 4690
    :cond_d
    :goto_1
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sceneMode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mutexMode="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v7}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4692
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4693
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pas="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4694
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4699
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4700
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_2

    .line 4703
    :cond_e
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 4704
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 4705
    iput-object v5, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 4710
    :cond_f
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getJpegQuality(Z)Ljava/lang/String;

    move-result-object v0

    .line 4711
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jpegQuality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    .line 4713
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 4720
    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v3

    .line 4721
    sget-object v6, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EV="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v6

    .line 4723
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    if-lt v3, v7, :cond_10

    if-gt v3, v6, :cond_10

    .line 4725
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_3

    .line 4727
    :cond_10
    sget-object v6, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid exposure range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4732
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v3

    .line 4733
    sget-object v6, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shaderEffect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v6

    if-nez v6, :cond_11

    .line 4737
    invoke-static {v3}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_11

    .line 4738
    sget-object v6, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearAiEffect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 4740
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    .line 4743
    :cond_11
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 4745
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-nez v6, :cond_13

    .line 4746
    new-instance v6, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v8, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-direct {v6, v7, v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender;-><init>(Lcom/android/camera/ActivityBase;Z)V

    iput-object v6, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 4748
    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v6, :cond_12

    .line 4749
    iget-object v7, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    goto :goto_4

    .line 4751
    :cond_12
    sget-object v6, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v7, "Error!!! the activity should not be null"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    :cond_13
    :goto_4
    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v6, :cond_16

    .line 4756
    invoke-virtual {v6, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->prepareEffectRender(I)V

    .line 4757
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4758
    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-nez v3, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    :goto_5
    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setQuality(I)V

    goto :goto_6

    .line 4761
    :cond_15
    invoke-static {}, Lcom/android/camera/CameraSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    .line 4762
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorEffect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4764
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 4769
    :cond_16
    :goto_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v3, 0x7f0f01f8

    .line 4771
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "pref_camera_autoexposure_key"

    .line 4769
    invoke-virtual {v0, v6, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4772
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoExposure="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/module/CameraModule;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4777
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    .line 4778
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "antiBanding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4780
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 4783
    :cond_17
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    const-string v6, "continuous-picture"

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 4784
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_7

    .line 4867
    :cond_18
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 4868
    sget-object v4, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v7, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFlashModeSafely(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4870
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4871
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 4872
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 4874
    :cond_19
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 4875
    invoke-static {v6, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4876
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v4, "setFocusMode continuous picture"

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4878
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v6}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 4786
    :cond_1a
    :goto_7
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->is3ALocked()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4787
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4790
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 4791
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    .line 4793
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    .line 4794
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v7

    .line 4795
    sget-object v8, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v9, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v9, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFlashModeSafely(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4797
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v7}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string v7, "off"

    .line 4798
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "torch"

    .line 4799
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 4800
    invoke-static {v7, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4801
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4802
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4803
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4804
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4809
    :cond_1c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4810
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 4811
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 4813
    :cond_1d
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mObjectTrackingStarted:Z

    if-eqz v0, :cond_1f

    :cond_1e
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1f

    move-object v0, v5

    goto :goto_8

    .line 4815
    :cond_1f
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_23

    .line 4817
    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const-string v7, "manual"

    if-nez v4, :cond_20

    .line 4818
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 4819
    :cond_20
    sget-object v4, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v8, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v8, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_21
    const-string v4, "macro"

    .line 4821
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 4822
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 4823
    :cond_22
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    .line 4826
    :cond_23
    sget-object v4, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "focusMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v7, 0xa7

    if-ne v4, v7, :cond_27

    const v4, 0x7f0f0252

    .line 4832
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pref_qc_camera_exposuretime_key"

    .line 4831
    invoke-virtual {p0, v8, v7}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0f029e

    .line 4834
    invoke-virtual {p0, v8}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_qc_camera_iso_key"

    .line 4833
    invoke-virtual {p0, v10, v9}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4835
    sget-object v10, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MODE_MANUAL: exposureTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "iso = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4836
    invoke-virtual {p0, v8}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    .line 4837
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    goto :goto_9

    :cond_24
    move v10, v2

    goto :goto_a

    :cond_25
    :goto_9
    move v10, v1

    .line 4838
    :goto_a
    iget-object v11, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/camera/module/CameraModule$10;

    invoke-direct {v12, p0, v10}, Lcom/android/camera/module/CameraModule$10;-><init>(Lcom/android/camera/module/CameraModule;Z)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4845
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->m3ALocked:Z

    if-eqz v0, :cond_27

    .line 4847
    invoke-virtual {p0, v4}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4848
    invoke-virtual {p0, v8}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 4849
    :cond_26
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/android/camera/FocusManager;->resetTouchFocus(I)V

    .line 4850
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->unlockAEAF()V

    .line 4852
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 4853
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 4854
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    :cond_27
    const v0, 0x7f0f0380

    .line 4860
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pref_camera_whitebalance_key"

    .line 4859
    invoke-virtual {p0, v4, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4861
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 4862
    sget-object v4, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v7, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_b

    .line 4864
    :cond_28
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4885
    :cond_29
    :goto_b
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2a

    .line 4886
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v7, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v7}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 4889
    :cond_2a
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2b

    .line 4891
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v7, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v7}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 4894
    :cond_2b
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2d

    .line 4895
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4896
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_c

    .line 4898
    :cond_2c
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 4905
    :cond_2d
    :goto_c
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 4906
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_e

    .line 4911
    :cond_2e
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4912
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4913
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4914
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4915
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_d

    .line 4918
    :cond_2f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 4920
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const-string v4, "pref_camera_facedetection_key"

    .line 4918
    invoke-virtual {v0, v4, v3}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_f

    :cond_30
    :goto_d
    move v0, v1

    goto :goto_f

    :cond_31
    :goto_e
    move v0, v2

    .line 4923
    :goto_f
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v3, :cond_33

    if-nez v0, :cond_32

    move v4, v1

    goto :goto_10

    :cond_32
    move v4, v2

    .line 4924
    :goto_10
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setSkipDrawFace(Z)V

    :cond_33
    if-eqz v0, :cond_34

    .line 4927
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_35

    .line 4928
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 4929
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    goto :goto_11

    .line 4932
    :cond_34
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_35

    .line 4933
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 4934
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 4938
    :cond_35
    :goto_11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4939
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4942
    :cond_36
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 4943
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 4944
    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_37

    move v3, v1

    goto :goto_12

    :cond_37
    move v3, v2

    .line 4943
    :goto_12
    invoke-virtual {v0, v3}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 4947
    :cond_38
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 4949
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/android/zxing/QRCodeManager;->setTransposePreviewSize(II)V

    .line 4950
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/zxing/QRCodeManager;->setPreviewFormat(I)V

    .line 4952
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4953
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    if-lez v0, :cond_39

    .line 4954
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4955
    :cond_39
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 4956
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_13

    .line 4959
    :cond_3a
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_14

    .line 4957
    :cond_3b
    :goto_13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 4962
    :goto_14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->addT2TParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4964
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_3c

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_3d

    .line 4965
    :cond_3c
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 4969
    :cond_3d
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4970
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 4973
    :cond_3e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4974
    sget-object v3, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    .line 4976
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontBokehOn()Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    goto :goto_15

    :cond_3f
    move v0, v2

    .line 4978
    :goto_15
    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackBokehOn()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 4980
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4981
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4982
    sget-object v3, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "fix zoom ratio to %d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4983
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/Util;->binarySearchRightMost(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_40
    move v0, v1

    :cond_41
    if-eqz v0, :cond_42

    .line 4987
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v3, "bokeh=enable"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->enableBokeh(Landroid/hardware/Camera$Parameters;)V

    goto :goto_16

    .line 4990
    :cond_42
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v3, "bokeh=disable"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->disableBokeh(Landroid/hardware/Camera$Parameters;)V

    .line 4994
    :goto_16
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4995
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAiSceneEnabled:Z

    .line 4996
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAiSceneEnabled:Z

    if-eqz v0, :cond_43

    .line 4997
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v3, "ai scene=enable"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->enableAiAsd(Landroid/hardware/Camera$Parameters;)V

    .line 5000
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_44

    .line 5002
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    goto :goto_17

    .line 5005
    :cond_43
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v3, "ai scene=disable"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->disableAiAsd(Landroid/hardware/Camera$Parameters;)V

    .line 5010
    :cond_44
    :goto_17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->isSupportedSuperNightScene()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5011
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xac

    if-ne v4, v5, :cond_45

    goto :goto_18

    :cond_45
    move v1, v2

    :goto_18
    invoke-virtual {v0, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setSuperNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 5015
    :cond_46
    invoke-static {}, Lcom/android/camera/Device;->isSupportScreenLight()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 5016
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mScreenLightOn:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setScreenLight(Landroid/hardware/Camera$Parameters;Z)V

    .line 5019
    :cond_47
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5020
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautyRecord(Landroid/hardware/Camera$Parameters;Z)V

    :cond_48
    :goto_19
    return-void
.end method

.method protected updateExitButton(Z)V
    .locals 0

    .line 2735
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 2736
    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDetectedHHT()Z

    :cond_0
    return-void
.end method

.method protected updateFaceView(ZZ)V
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1098
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateFlashPreference()V
    .locals 2

    .line 6003
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 6005
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6006
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetAiSceneInHdrOrFlashOn()V

    .line 6010
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6011
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6013
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    .line 6016
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    const/4 v0, 0x1

    .line 6020
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    const-string v0, "pref_camera_flashmode_key"

    .line 6021
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 6022
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public updateHDRPreference()V
    .locals 2

    .line 6027
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 6028
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 6029
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 6030
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopObjectTracking(Z)V

    const-string v1, "pref_camera_hdr_key"

    .line 6032
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->updateASD(Ljava/lang/String;)V

    .line 6033
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetAiSceneInHdrOrFlashOn()V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6035
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 6036
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    goto :goto_0

    .line 6038
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 6040
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMetaDataManager()V

    goto :goto_1

    .line 6041
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6042
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    goto :goto_1

    .line 6044
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    :goto_1
    return-void
.end method

.method protected updateModePreference()V
    .locals 2

    .line 5438
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5441
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 5445
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 5446
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 5447
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getMutexHdrMode(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 5450
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5451
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    :cond_3
    const-string v0, "pref_camera_hand_night_key"

    .line 5453
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5454
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHHT()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_4

    .line 5455
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontMuxCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 5456
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    :cond_5
    const-string v0, "pref_camera_ubifocus_key"

    .line 5458
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5459
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5460
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 5463
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->resetMutexModeManually()V

    .line 5466
    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5467
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setManualParameters()V

    .line 5468
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5470
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v0

    if-nez v0, :cond_9

    .line 5471
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->tryEnableHHT()V

    :cond_9
    :goto_1
    return-void
.end method

.method public updateSuperResolution()V
    .locals 3

    .line 6050
    invoke-static {}, Lcom/android/camera/Device;->isSupportSuperResolution()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6053
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6057
    :cond_1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xac

    if-ne v0, v1, :cond_2

    return-void

    .line 6060
    :cond_2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 6063
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "pref_camera_super_resolution_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 6066
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 6070
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperResolutionEnable()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 6073
    :cond_6
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCurrentZoomRatio:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_8

    .line 6074
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6075
    :cond_7
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 6078
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6079
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMetaDataManager:Lcom/android/camera/module/CameraModule$MetaDataManager;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneData()V

    .line 6080
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    :cond_9
    :goto_0
    return-void
.end method

.method protected updateWaterMark()V
    .locals 4

    .line 5029
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    const-string v1, "on"

    const-string v2, "off"

    if-eqz v0, :cond_0

    .line 5030
    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 5032
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5033
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5034
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v3, "time watermark on"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 5037
    :cond_1
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v3, "time watermark off"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5042
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5043
    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 5045
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5046
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5047
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v2, "dual watermark on"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_1

    .line 5050
    :cond_3
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "dual watermark off"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5051
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
