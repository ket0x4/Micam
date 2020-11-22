.class public Lcom/android/camera/camera_adapter/CameraMTK;
.super Lcom/android/camera/module/CameraModule;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;,
        Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;,
        Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;,
        Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBParams;,
        Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraMTK"

.field private static sProxy:Lcom/android/camera/hardware/MTKCameraProxy;


# instance fields
.field private mClearImage:[B

.field private mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

.field private mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mCurrentNum:I

.field private mDepthMap:[B

.field protected mEnableMetaData:Z

.field private mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

.field private mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mIsLongShotMode:Z

.field private mIsMTKFaceBeautyMode:Z

.field private mIsRefocusCapture:Z

.field private mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

.field private mJpsData:[B

.field private mLdcData:[B

.field private mMaskAndConfigData:[B

.field private mMmsdkCallbackSupported:Z

.field private mOperator:Ljava/lang/Object;

.field private mOriginalJpegData:[B

.field private mParallelProcessingTitle:Ljava/lang/String;

.field private mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

.field private final mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

.field private final mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/MTKCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    .line 63
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 64
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 65
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 68
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z

    .line 86
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$1;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/CameraMTK$1;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .line 728
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Lcom/android/camera/camera_adapter/CameraMTK$1;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    .line 729
    new-instance v1, Lcom/android/camera/stereo/WarningCallback;

    invoke-direct {v1}, Lcom/android/camera/stereo/WarningCallback;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    .line 733
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/location/Location;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    .line 734
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    .line 735
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    .line 1039
    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParallelProcessingTitle:Ljava/lang/String;

    .line 71
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    .line 72
    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->constructObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    .line 77
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/camera/MmsdkCallbackImpl;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/MmsdkCallbackImpl;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v1}, Lcom/android/camera/MmsdkCallbackImpl;->init()V

    .line 79
    invoke-virtual {v1}, Lcom/android/camera/MmsdkCallbackImpl;->isMmsdkCallbackSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z

    .line 83
    :goto_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "support mmsdk callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/module/CameraModule$ShutterCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/FocusManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/camera_adapter/CameraMTK;)[B
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/camera/camera_adapter/CameraMTK;[B)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->setJsonBuffer([B)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/camera_adapter/CameraMTK;Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/camera_adapter/CameraMTK;->writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/hardware/Camera$Parameters;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/camera_adapter/CameraMTK;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/PictureInfo;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/stereo/WarningCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/camera_adapter/CameraMTK;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/camera_adapter/CameraMTK;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    return p1
.end method

.method private applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setSmoothLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 469
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 470
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 471
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/MTKCameraProxy;->setSkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void

    .line 465
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyFBParams: unexpected null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "cameraParam"

    goto :goto_1

    :cond_2
    const-string p1, "fbParam"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructObject()Ljava/lang/Object;
    .locals 3

    .line 936
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string p0, "com.mediatek.xmp.XmpOperator"

    .line 938
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "()V"

    invoke-static {p0, v1}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 939
    invoke-virtual {p0, v1}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 944
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v2, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 942
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchMethod"

    invoke-static {v1, v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private enableZSL()Z
    .locals 1

    .line 475
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 478
    :cond_0
    sget-boolean p0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/camera/Device;->IS_H3C:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/camera/Device;->IS_B6:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/camera/Device;->IS_C3D:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/camera/Device;->IS_C3C:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/camera/Device;->IS_F9:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private flattenFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 6

    const/4 p0, 0x0

    if-nez p1, :cond_0

    move v0, p0

    goto :goto_0

    .line 579
    :cond_0
    array-length v0, p1

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 583
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge p0, v0, :cond_3

    .line 586
    aget-object v2, p1, p0

    iget-object v2, v2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, p1, p0

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    aget-object v4, p1, p0

    iget-object v4, v4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 587
    aget-object v3, p1, p0

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    aget-object v4, p1, p0

    iget-object v4, v4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    aget-object v5, p1, p0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    if-eq p0, v2, :cond_2

    const-string v2, ","

    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 593
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFaceNo([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 423
    :cond_0
    array-length p0, p1

    :goto_0
    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    .line 430
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->MULTIPLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object p0

    .line 428
    :cond_1
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object p0

    .line 426
    :cond_2
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object p0
.end method

.method private isFlashWillOn(Ljava/lang/String;)Z
    .locals 1

    .line 572
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "auto"

    .line 573
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 574
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "on"

    .line 575
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isSupportContinuousShut(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    .line 562
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedCaptureMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "continuousshot"

    .line 564
    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUseMediaTekFaceBeautify()Z
    .locals 0

    .line 996
    sget-boolean p0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/camera/Device;->IS_HM3Z:Z

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

.method private mtkUpdateCameraParametersPreference()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    goto :goto_1

    .line 102
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v3, "disable meta data"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    goto :goto_1

    .line 108
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    .line 111
    :goto_1
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    const v0, 0x7f0f02c8

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thumbnailQuality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    .line 118
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 120
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f0252

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_qc_camera_exposuretime_key"

    .line 121
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 124
    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    .line 123
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_4

    .line 126
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    .line 127
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exposureTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/MTKCameraProxy;->getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setBeautyParams()V

    const v0, 0x7f0f029e

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "pref_qc_camera_iso_key"

    .line 137
    invoke-virtual {p0, v3, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 140
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 145
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saturation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contrast="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v0

    .line 156
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sharpness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 161
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->enableZSL()Z

    move-result v0

    .line 162
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZSL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "on"

    const-string v6, "off"

    if-eqz v0, :cond_6

    move-object v7, v5

    goto :goto_2

    :cond_6
    move-object v7, v6

    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 164
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 165
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v5}, Lcom/android/camera/hardware/MTKCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_3

    .line 167
    :cond_7
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 168
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v6}, Lcom/android/camera/hardware/MTKCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 172
    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    const/16 v3, 0x1388

    if-eqz v0, :cond_8

    .line 174
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v4, "[stereo_setup_process]. setVsDofOn"

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v4, 0x5dc0

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 177
    invoke-static {}, Lcom/android/camera/CameraSettings;->getStereoDofLevel()Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vfLevel="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_4

    .line 181
    :cond_8
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v4, "setVsDofOff"

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v4, 0x7530

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 183
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 188
    :cond_9
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFaceInfoWaterMark()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 189
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v4

    if-nez v4, :cond_b

    .line 190
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v4, v1

    goto :goto_5

    :cond_b
    move v4, v2

    .line 189
    :goto_5
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    .line 193
    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 194
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 195
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    move v3, v2

    :cond_d
    const-string v4, "xiaomi-preview-rotation"

    .line 194
    invoke-virtual {v0, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 199
    :cond_e
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 200
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautyRank(Landroid/hardware/Camera$Parameters;Z)V

    .line 203
    :cond_f
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAnalyzeAgeGender(Landroid/hardware/Camera$Parameters;Z)V

    .line 205
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupportContinuousShut(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 206
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setTimeWatermarkIfNeed()V

    goto :goto_6

    .line 209
    :cond_10
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v0, :cond_11

    .line 210
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    .line 213
    :cond_11
    :goto_6
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longShotMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isLongShotMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAgeDetection()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 230
    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v0

    .line 231
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowGenderAndAge(Z)V

    .line 232
    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setShowGenderAndAge="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_12
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_15

    .line 243
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    const-string v3, "true"

    if-eqz v0, :cond_14

    .line 244
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSceneMotion()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 245
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v3, "antiMotion=true"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 248
    :cond_13
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v3, "handNight=true"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 251
    :cond_14
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 252
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v3, "morphoHDR=true"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_15
    :goto_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedMetadata()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 259
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 260
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 261
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x5

    goto :goto_8

    :cond_16
    move v0, v2

    .line 266
    :goto_8
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v3

    invoke-static {v3}, Lcom/android/camera/Device;->isSupportedASD(Z)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 267
    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    if-eqz v3, :cond_17

    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-nez v3, :cond_17

    .line 268
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v3

    if-nez v3, :cond_17

    .line 269
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v3

    if-nez v3, :cond_17

    .line 270
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_9

    :cond_17
    move v1, v2

    .line 271
    :goto_9
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asdEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_18

    goto :goto_a

    :cond_18
    move-object v5, v6

    :goto_a
    const-string v3, "scene-detect"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_19

    const/4 v0, 0x3

    .line 277
    :cond_19
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setMetaCallback(I)V

    :cond_1a
    :goto_b
    return-void
.end method

.method private notifyMergeData()V
    .locals 12

    .line 919
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMergeData mCurrentNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    .line 921
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 922
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMergeData Vs Dof "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 924
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    if-eqz v0, :cond_0

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "_STEREO"

    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->createJpegName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 926
    new-instance v0, Lcom/android/camera/stereo/StereoDataGroup;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B

    iget-object v8, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    iget-object v9, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B

    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/stereo/StereoDataGroup;-><init>(Ljava/lang/String;[B[B[B[B[B[B)V

    .line 929
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    const/16 v2, 0x2714

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v0, 0x0

    .line 931
    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    :cond_1
    return-void
.end method

.method private setFacePoints(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    .line 598
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->flattenFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 600
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/hardware/MTKCameraProxy;->setFacePosition(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setJsonBuffer([B)V
    .locals 4

    :try_start_0
    const-string v0, "com.mediatek.xmp.XmpOperator"

    .line 967
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setJsonBuffer"

    const-string v2, "([B)V"

    .line 968
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 969
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, p0, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 973
    sget-object p1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v0, "no method setJsonBuffer"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 971
    sget-object p1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v0, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setParallelProcessParam()V
    .locals 6

    .line 1022
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isParallelProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-static {}, Lcom/android/camera/Util;->getParallelProcessImageTmpFolder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->createJpegName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1026
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[parallel] capture with parallel process tmpFolder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V

    .line 1028
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setParallelProcessFileInfo(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParallelProcessingTitle:Ljava/lang/String;

    return-void

    .line 1034
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string v1, "[parallel] capture without parallel process"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1035
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParallelProcessingTitle:Ljava/lang/String;

    .line 1036
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method

.method private setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 553
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontMirror()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 554
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_0
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 558
    :goto_0
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pictureFlip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 0

    .line 443
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_ADVANCED:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 444
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object p0

    const/4 p2, 0x0

    .line 445
    aget p2, p0, p2

    const/4 p3, 0x1

    aget p0, p0, p3

    invoke-static {p1, p2, p0}, Lcom/android/camera/MtkFBParamsUtil;->getAdvancedValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;II)V

    goto :goto_1

    .line 448
    :cond_0
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 449
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    goto :goto_0

    .line 450
    :cond_1
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 451
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    goto :goto_0

    .line 452
    :cond_2
    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 453
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .line 458
    :goto_0
    invoke-static {p1, p0, p3}, Lcom/android/camera/MtkFBParamsUtil;->getIntelligentValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    :goto_1
    return-void

    .line 455
    :cond_3
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateFBParams: unexpected fbMode "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 4

    :try_start_0
    const-string v0, "com.mediatek.xmp.XmpOperator"

    .line 952
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "writeStereoCaptureInfoToJpg"

    const-string v2, "(Ljava/lang/String;[B[B[B[B[B[B)[B"

    .line 953
    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 955
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    const/4 p1, 0x5

    aput-object p6, v2, p1

    const/4 p1, 0x6

    aput-object p7, v2, p1

    invoke-virtual {v1, v0, p0, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 960
    sget-object p1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string p2, "no method writeStereoCaptureInfoToJpg"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 958
    sget-object p1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string p2, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 3

    .line 327
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_0

    sget v2, Lcom/android/camera/module/CameraModule;->BURST_SHOOTING_COUNT:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    .line 328
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_1

    const-string p1, "continuousshot"

    goto :goto_1

    :cond_1
    const-string p1, "normal"

    :goto_1
    invoke-virtual {v0, p0, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method protected cancelContinuousShot()V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    return-void
.end method

.method public closeCamera()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 350
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 2

    .line 655
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedStereoPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 657
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 662
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    .line 664
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getMaxPictureSizeSafely(Ljava/util/List;)I

    move-result p0

    .line 662
    invoke-static {v1, v0, p0}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 666
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object p0

    return-object p0
.end method

.method protected getParallelProcessingFileTitle()Ljava/lang/String;
    .locals 0

    .line 1042
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParallelProcessingTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected handleMultiSnapDone()V
    .locals 2

    .line 335
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 339
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    .line 341
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    return-void
.end method

.method protected initializeAfterCameraOpen()V
    .locals 3

    .line 694
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    .line 696
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 697
    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Stereo Save Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 701
    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/os/Looper;Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    :cond_0
    const/4 v0, 0x1

    .line 703
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    goto :goto_0

    .line 705
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    goto :goto_0

    .line 708
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    :goto_0
    return-void
.end method

.method protected initializeExposureCompensation()V
    .locals 0

    .line 681
    :try_start_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->initializeExposureCompensation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p0, :cond_0

    .line 688
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->dump()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected isFaceBeautyMode()Z
    .locals 0

    .line 506
    iget-boolean p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    return p0
.end method

.method protected isLongShotMode()Z
    .locals 0

    .line 501
    iget-boolean p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    return p0
.end method

.method protected isParallelProcessing()Z
    .locals 1

    .line 1048
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z

    if-eqz v0, :cond_0

    .line 1051
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isCaptureIntent()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isSupportSceneMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isZeroShotMode()Z
    .locals 0

    .line 483
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    return p0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 533
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "flash-on"

    .line 534
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFlashWillOn(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected needSetupPreview()Z
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "preview-stopped"

    .line 548
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->enableZSL()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public onCameraStartPreview()V
    .locals 2

    .line 978
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/stereo/WarningCallback;->setActivity(Landroid/app/Activity;)V

    .line 980
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 982
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 986
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackBokehOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_1

    .line 988
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 990
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 714
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onDestroy()V

    .line 715
    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 718
    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 5

    .line 384
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 385
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isUseMediaTekFaceBeautify()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 386
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceExists(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 387
    invoke-interface {p2, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isFaceStable(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 388
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object p1

    .line 389
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->getFaceNo([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    move-result-object p2

    .line 392
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne p2, v0, :cond_0

    return-void

    .line 397
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 398
    iget v0, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    float-to-double v1, v0

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :cond_2
    return-void

    .line 402
    :cond_3
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    sget-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 404
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    .line 406
    :cond_4
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {p1, v0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 407
    :cond_5
    sget-object p1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne p2, p1, :cond_6

    .line 408
    sget-object p1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :cond_6
    sget-object p1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 412
    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    .line 413
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 414
    iput-object p2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 415
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {p1, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    :cond_7
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_qc_camera_iso_key"

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f0f029e

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 361
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0

    :cond_2
    const-string v0, "pref_camera_stereo_key"

    .line 367
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    invoke-static {}, Lcom/android/camera/CameraSettings;->getStereoDofLevel()Ljava/lang/String;

    move-result-object p1

    .line 369
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting changed, vfLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    const/4 p1, 0x3

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    goto :goto_0

    :cond_3
    const-string v0, "pref_qc_manual_whitebalance_k_value_key"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    sget-object p1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V

    .line 375
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 377
    :cond_4
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected prepareCapture()V
    .locals 1

    .line 516
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 517
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 518
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setTimeWatermarkIfNeed()V

    .line 519
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFaceBeautyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setFacePoints(Landroid/hardware/Camera$Parameters;)V

    .line 522
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setBeautyParams()V

    .line 525
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setParallelProcessParam()V

    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 1

    .line 318
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateWaterMark()V

    const/4 v0, 0x1

    .line 319
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 321
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    :cond_0
    return-void
.end method

.method public prepareOpenCamera(II)V
    .locals 1

    const/16 v0, 0xab

    if-ne p2, v0, :cond_0

    .line 671
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 672
    iget-boolean p0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez p0, :cond_1

    .line 673
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string p1, "[stereo_setup_process]. enableStereoMode.invoke MtkStereo"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V

    :cond_1
    return-void
.end method

.method protected resetFaceBeautyMode()V
    .locals 1

    const/4 v0, 0x0

    .line 511
    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    .line 493
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 494
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 495
    sget-object p0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/MTKCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setManualParameters()V
    .locals 4

    .line 1001
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const v0, 0x7f0f0252

    .line 1004
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_exposuretime_key"

    .line 1003
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1006
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    .line 1005
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1008
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    .line 1009
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exposureTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v0, 0x7f0f029e

    .line 1014
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_qc_camera_iso_key"

    .line 1013
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/CameraModule;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .line 539
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 540
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->mtkUpdateCameraParametersPreference()V

    return-void
.end method
