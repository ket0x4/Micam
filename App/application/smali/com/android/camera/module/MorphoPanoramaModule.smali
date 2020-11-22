.class public Lcom/android/camera/module/MorphoPanoramaModule;
.super Lcom/android/camera/module/BaseModule;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;,
        Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;,
        Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;,
        Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MorphoPanoramaModule"

.field private static final USE_PREVIEW_IMAGE:Z

.field private static sSaveOutputType:I


# instance fields
.field private MAX_DST_IMG_WIDTH:I

.field private final USE_MULTI_THREAD:Z

.field private mAeLockSupported:Z

.field private mAppDeviceRotation:I

.field private mAppPanoramaDirection:I

.field private mAppPanoramaDirectionSettings:I

.field private mAttachPosOffsetX:I

.field private mAttachPosOffsetY:I

.field protected mAwbLockSupported:Z

.field private mCameraPreviewBuff:[B

.field private mCameraState:I

.field private mCaptureInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureOrientationDecided:Z

.field private volatile mCntProcessed:I

.field private volatile mCntReqShoot:I

.field private mDeviceOrientationAtCapture:I

.field private mDirection:[I

.field private mDispPreviewImage:Landroid/graphics/Bitmap;

.field private mFrameRatio:F

.field private mImageID:[I

.field private mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

.field private volatile mIsShooting:Z

.field private mLocation:Landroid/location/Location;

.field protected final mMainHandler:Landroid/os/Handler;

.field private mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

.field private mMotionData:[B

.field private mMotionlessThreshold:I

.field private mMoveSpeed:[I

.field private mPanoramaShootingStartTime:J

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPreViewScaleHeight:I

.field private mPrevDirection:I

.field private mPreviewCount:I

.field private mPreviewCroppingAdjustByAuto:I

.field private final mPreviewCroppingRatio:I

.field private mPreviewDisplayRatio:F

.field private mPreviewHeight:I

.field private mPreviewImage:Landroid/graphics/Bitmap;

.field private mPreviewRefY:I

.field private mPreviewSkipCount:I

.field private mPreviewWidth:I

.field private mRequestTakePicture:Z

.field private mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

.field private mSensorSyncObj:Ljava/lang/Object;

.field private mSnapshotFocusMode:Ljava/lang/String;

.field private mStatus:[I

.field private mStillProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

.field private mSyncObj:Ljava/lang/Object;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mTimeTaken:J

.field private mUseImage:I

.field private mUseSensorAWF:Z

.field private mUseSensorThreshold:I

.field private mUseThreshold:I

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    invoke-static {}, Lcom/android/camera/Device;->isPanoUsePreviewFrame()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    const/4 v0, 0x1

    .line 141
    sput v0, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 99
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureOrientationDecided:Z

    .line 154
    new-instance v1, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/MorphoPanoramaModule$MainHandler;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$1;)V

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-string v1, "continuous-picture"

    .line 160
    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    .line 161
    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    .line 170
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSensorSyncObj:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 177
    iput-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_MULTI_THREAD:Z

    new-array v3, v1, [I

    .line 186
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 187
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    new-array v3, v1, [I

    .line 188
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    new-array v3, v1, [I

    .line 189
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    new-array v1, v1, [I

    .line 190
    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    .line 192
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 193
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessed:I

    .line 194
    iput-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .line 197
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseImage:I

    const/16 v1, 0xa

    .line 198
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseThreshold:I

    const/16 v2, 0x7530

    .line 199
    iput v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    const v2, 0x8000

    .line 200
    iput v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionlessThreshold:I

    .line 201
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorThreshold:I

    .line 202
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorAWF:Z

    .line 203
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingRatio:I

    .line 204
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    .line 205
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppDeviceRotation:I

    .line 206
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    .line 207
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirectionSettings:I

    .line 211
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 99
    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    return v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/panorama/MorphoPanoramaGP;)Lcom/android/camera/panorama/MorphoPanoramaGP;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/camera/module/MorphoPanoramaModule;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessed:I

    return p0
.end method

.method static synthetic access$1408(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 2

    .line 99
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessed:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    return p0
.end method

.method static synthetic access$1508(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 2

    .line 99
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/camera/module/MorphoPanoramaModule;)[B
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$2002(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->finishAttachStillImageTask()V

    return-void
.end method

.method static synthetic access$2200()I
    .locals 1

    .line 99
    sget v0, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/MorphoPanoramaModule;->createNameString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MorphoPanoramaModule;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/module/MorphoPanoramaModule;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return p0
.end method

.method static synthetic access$2902(Lcom/android/camera/module/MorphoPanoramaModule;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initCommenConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initPreviewLayout()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/module/MorphoPanoramaModule;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/module/MorphoPanoramaModule;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/module/MorphoPanoramaModule;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    return-wide v0
.end method

.method private addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 12

    .line 1603
    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_1

    .line 1604
    :cond_1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1605
    iget-wide v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    invoke-static {p1, p3, v0, v3, v4}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1610
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    :goto_2
    move-object v4, v3

    iget-wide v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    iget-object v9, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    .line 1611
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v5, p1

    move v6, p3

    .line 1610
    invoke-static/range {v4 .. v11}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object p1

    .line 1612
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(IZ)V

    .line 1613
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(IZZ)V

    .line 1614
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 1615
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 1616
    iget-object p3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule$3;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/module/MorphoPanoramaModule$3;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/Camera;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_3

    .line 1626
    invoke-virtual {p2, p1}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    .line 1627
    invoke-static {p2, p1, v2}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object p0

    .line 1628
    invoke-static {p2, p1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1629
    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1, p0, v2, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_3
    return-void
.end method

.method private addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    if-nez p1, :cond_0

    .line 1430
    new-instance p1, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-direct {p1, p0}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    .line 1431
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private allocateDisplayBuffers(I)V
    .locals 3

    .line 1645
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1646
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1647
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    if-eq v0, v1, :cond_1

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 1649
    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1650
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1651
    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1654
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 1677
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1678
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v0, v0

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1679
    iget p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreViewScaleHeight:I

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1680
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    goto/16 :goto_0

    .line 1664
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1665
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1666
    sget p1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1667
    sget p1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    div-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    goto :goto_0

    .line 1658
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1659
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1660
    iget p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreViewScaleHeight:I

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1661
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    div-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    goto :goto_0

    .line 1670
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 1671
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v0, v0

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1672
    sget p1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 1673
    sget p1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    div-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    :cond_5
    :goto_0
    return-void
.end method

.method private calibrateRotation(I)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1598
    :cond_0
    iget p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDeviceOrientationAtCapture:I

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p0, :cond_0

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method private createNameString(JI)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f01af

    .line 1687
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1688
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1689
    sget p2, Lcom/android/camera/module/MorphoPanoramaModule;->sSaveOutputType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 1691
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bounding"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1693
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->ensureFilenameUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureFilenameUnique(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1697
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1707
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_2

    goto :goto_0

    .line 1712
    :cond_2
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v4, "ensureFilenameUnique try another one"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    if-le p0, v1, :cond_1

    goto :goto_1

    .line 1709
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureFilenameUnique new path-> "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    return-object p1
.end method

.method private finishAttachStillImageTask()V
    .locals 2

    .line 1437
    :goto_0
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessed:I

    if-le v0, v1, :cond_0

    const-wide/16 v0, 0x64

    .line 1439
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1441
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1444
    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcTask:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    return-void
.end method

.method private initCommenConfig()V
    .locals 2

    .line 1032
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    return-void
.end method

.method private initPreviewLayout()V
    .locals 5

    .line 565
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setSize(II)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v1

    .line 568
    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    .line 569
    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x50

    div-int/lit8 v0, v0, 0x64

    .line 571
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v1, v2

    .line 572
    div-int/2addr v1, v0

    .line 575
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xb0

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 576
    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->initPreviewLayout(IIII)V

    .line 577
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->isAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 578
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->showSmallPreview(Z)V

    .line 580
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_1

    const/4 v0, 0x7

    .line 581
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_1
    return-void
.end method

.method private initializeCapabilities()V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    .line 546
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    return-void
.end method

.method private initializeMiscControls()V
    .locals 3

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mStillProcList:Ljava/util/ArrayList;

    .line 401
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreViewScaleHeight:I

    int-to-float v0, v0

    .line 402
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42a00000    # 80.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    return-void
.end method

.method private isProcessingFinishTask()Z
    .locals 1

    .line 1448
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isShootingTooShort()Z
    .locals 4

    .line 691
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaShootingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isZslMode()Z
    .locals 1

    .line 1784
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->isZSLMode(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    return p0
.end method

.method private keepScreenOnAwhile()V
    .locals 3

    .line 916
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private onCaptureOrientationDecided()V
    .locals 4

    .line 1719
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 1720
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetX:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAttachPosOffsetY:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->onCaptureOrientationDecided(III)V

    const/4 v0, 0x1

    .line 1721
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureOrientationDecided:Z

    return-void
.end method

.method private onPreviewMoving()V
    .locals 1

    .line 1726
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 1727
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->onPreviewMoving()V

    return-void
.end method

.method private releaseResources()V
    .locals 1

    .line 927
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->closeCamera()V

    const/4 v0, 0x0

    .line 928
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 912
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetToPreview()V
    .locals 2

    .line 775
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 776
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    .line 779
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v0, :cond_2

    .line 780
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPreview()V

    :cond_2
    return-void
.end method

.method private resetUI()V
    .locals 2

    .line 754
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 755
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->resetShootUI()V

    .line 757
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_0

    .line 759
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_0
    const/4 v0, 0x0

    .line 761
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->showSmallPreview(Z)V

    return-void
.end method

.method private saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1568
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1570
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1571
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1575
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1576
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4, p2, v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->saveOutputJpeg(Ljava/io/FileDescriptor;Landroid/graphics/Rect;I[I)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1578
    :try_start_1
    sget-object v3, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open file failed, filePath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1580
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    const/4 v1, -0x1

    :goto_0
    if-nez v1, :cond_1

    .line 1584
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveOutputJpeg image generated ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->calibrateRotation(I)I

    move-result v0

    .line 1586
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 1588
    :cond_1
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "%s:saveOutputJpeg() -> 0x%x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 1580
    :goto_2
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw p0
.end method

.method private setProgressUI(Z)V
    .locals 0

    return-void
.end method

.method private setShootUI()V
    .locals 2

    .line 1088
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 1089
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setShootUI()V

    .line 1091
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_0

    .line 1093
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    .line 1095
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    return-void
.end method

.method private setZsl()V
    .locals 2

    .line 533
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-eqz v0, :cond_3

    .line 537
    :cond_1
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "true"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setupCaptureParams()V
    .locals 8

    .line 452
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 453
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 452
    invoke-static {v0, v1, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 454
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPanoPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 455
    iget v1, v0, Lcom/android/camera/PictureSize;->width:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    .line 456
    iget v1, v0, Lcom/android/camera/PictureSize;->height:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    .line 458
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "picture h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    invoke-virtual {v1, v3, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 461
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 462
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v5, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v6, v0, Lcom/android/camera/PictureSize;->width:I

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    .line 463
    invoke-static {v6, v0}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    float-to-double v6, v0

    .line 462
    invoke-static {v3, v5, v1, v6, v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 467
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    .line 468
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    .line 469
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preview h = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 471
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 472
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 474
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 477
    :cond_0
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    if-ge v0, v1, :cond_1

    int-to-double v3, v1

    int-to-double v0, v0

    goto :goto_0

    :cond_1
    int-to-double v3, v0

    int-to-double v0, v1

    :goto_0
    div-double/2addr v3, v0

    .line 482
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-double v0, v0

    mul-double/2addr v3, v0

    double-to-int v0, v3

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreViewScaleHeight:I

    .line 483
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initializeMiscControls()V

    .line 485
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 487
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v2

    .line 488
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v3

    .line 489
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v4, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 490
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preview fps: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 497
    :cond_2
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set the focus mode to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because the mode is not supported."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 501
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 503
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 505
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    .line 506
    sget-object v3, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "antiBanding value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 508
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 512
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setZsl()V

    .line 513
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 514
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "t2t"

    invoke-virtual {v0, v3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 520
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 521
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 522
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    .line 523
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->clearExposureTime(Landroid/hardware/Camera$Parameters;)V

    .line 524
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->clearManuallyISO(Landroid/hardware/Camera$Parameters;)V

    .line 525
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->clearManuallyWhiteBalance(Landroid/hardware/Camera$Parameters;)V

    .line 526
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    .line 527
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 528
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBeautyRecord(Landroid/hardware/Camera$Parameters;Z)V

    :cond_5
    return-void

    .line 465
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Can not find suitable preview size for panorama"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private showSmallPreview(Z)V
    .locals 1

    .line 765
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-eqz p0, :cond_0

    return-void

    .line 769
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 770
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->showSmallPreview(Z)V

    return-void
.end method

.method private startPanoramaGP()Z
    .locals 8

    .line 1101
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 1102
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    new-array v0, v2, [I

    .line 1104
    new-instance v4, Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-direct {v4}, Lcom/android/camera/panorama/MorphoPanoramaGP;-><init>()V

    iput-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    .line 1105
    new-instance v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    invoke-direct {v4}, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;-><init>()V

    iput-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    .line 1106
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const-string v5, "YVU420_SEMIPLANAR"

    iput-object v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->format:Ljava/lang/String;

    .line 1107
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseThreshold:I

    iput v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->use_threshold:I

    .line 1109
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewWidth:I

    iput v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 1110
    iget v6, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewHeight:I

    iput v6, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 1112
    sget-boolean v7, Lcom/android/camera/module/MorphoPanoramaModule;->USE_PREVIEW_IMAGE:Z

    if-nez v7, :cond_0

    .line 1113
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureWidth:I

    iput v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    .line 1114
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPictureHeight:I

    iput v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    goto :goto_0

    .line 1116
    :cond_0
    iput v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    .line 1117
    iput v6, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    .line 1119
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v5

    float-to-double v5, v5

    iput-wide v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    .line 1120
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iput v3, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->draw_cur_image:I

    .line 1121
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    .line 1122
    iget v5, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v4, v5}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v4

    .line 1123
    iput v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    .line 1124
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirectionSettings:I

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    .line 1126
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->direction:I

    .line 1128
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mFrameRatio:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1129
    iget v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->still_width:I

    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1130
    iget v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_height:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1131
    iget v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_width:I

    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    const/16 v6, 0x10e

    if-eq v4, v6, :cond_1

    const/16 v4, 0x5a

    .line 1137
    iput v4, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    goto :goto_1

    .line 1134
    :cond_1
    iput v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 1140
    :goto_1
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    sget v6, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    .line 1141
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    const-wide v5, 0x4076800000000000L    # 360.0

    invoke-static {v4, v5, v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->calcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I

    .line 1142
    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    if-ge v4, v6, :cond_2

    int-to-float v7, v4

    int-to-float v6, v6

    div-float/2addr v7, v6

    .line 1144
    iput v4, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 1145
    iget v4, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1147
    :cond_2
    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->MAX_DST_IMG_WIDTH:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v6, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    if-ge v4, v6, :cond_3

    int-to-float v7, v4

    int-to-float v6, v6

    div-float/2addr v7, v6

    .line 1149
    iput v4, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 1150
    iget v4, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v5, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1152
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 1153
    iget v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v4, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 1155
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v5, v4, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->initialize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1157
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s:initialize() -> 0x%x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1162
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionlessThreshold:I

    invoke-virtual {v0, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setMotionlessThreshold(I)I

    .line 1163
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorThreshold:I

    invoke-virtual {v0, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setUseSensorThreshold(I)I

    .line 1164
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppDeviceRotation:I

    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAppPanoramaDirection:I

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->allocateDisplayBuffers(I)V

    .line 1165
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-boolean v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseSensorAWF:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP;->setUseSensorAssist(II)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1167
    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "%s:setUseSensorAssist() -> 0x%x"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {p0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->start()I

    move-result p0

    if-eqz p0, :cond_6

    .line 1172
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%s:start() -> 0x%x"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    return v2
.end method

.method private stopPanoramaShooting(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1179
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(ZZ)V

    return-void
.end method

.method private stopPanoramaShooting(ZZ)V
    .locals 2

    .line 1183
    sget-object p2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v0, "stopPanoramaShooting"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    .line 1185
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez p2, :cond_0

    goto :goto_1

    .line 1189
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1190
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return-void

    .line 1193
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureOrientationDecided:Z

    .line 1194
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    if-nez p1, :cond_2

    .line 1196
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 1198
    :cond_2
    iget p2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    :cond_3
    move p1, v0

    .line 1203
    :cond_4
    new-instance p2, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {p2, p0, v1, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    .line 1204
    iget-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSaveOutputImageTask:Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1208
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xa2

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p1, :cond_5

    .line 1210
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    goto :goto_0

    .line 1212
    :cond_5
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    .line 1216
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance p2, Lcom/android/camera/module/MorphoPanoramaModule$1;

    invoke-direct {p2, p0}, Lcom/android/camera/module/MorphoPanoramaModule$1;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 1186
    :cond_6
    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return-void
.end method

.method private switchCamera()V
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->switchCamera(I)V

    return-void
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 1

    .line 388
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public closeCamera()V
    .locals 2

    const/4 v0, 0x0

    .line 442
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    .line 443
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 444
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 445
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 446
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 447
    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    :cond_0
    return-void
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

    .line 408
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 410
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 412
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 414
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/android/camera/module/CameraModule;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 416
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/android/camera/camera_adapter/CameraPadOne;->getLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 420
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public isCameraEnabled()Z
    .locals 2

    .line 594
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDoingAction()Z
    .locals 0

    .line 706
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result p0

    return p0
.end method

.method public isShooting()Z
    .locals 0

    .line 710
    iget-boolean p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    return p0
.end method

.method protected keepScreenOn()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 922
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz v1, :cond_1

    .line 722
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 723
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 724
    invoke-direct {p0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 726
    :cond_0
    monitor-exit v0

    return v2

    .line 728
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected onCameraOpened()V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v0, "the module is already departed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->initializeCapabilities()V

    .line 344
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 345
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setupCaptureParams()V

    .line 347
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPreview()V

    .line 350
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v0, "SetupCameraThread done"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 1

    const/4 p1, 0x1

    .line 371
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    .line 372
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetUI()V

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 374
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    return p1
.end method

.method public onCameraSwitched()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onCameraOpened()V

    .line 365
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(II)V
    .locals 1

    .line 326
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 328
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    .line 330
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 331
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)V

    .line 332
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onCameraOpened()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 558
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 600
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_4

    const/16 v0, 0x57

    const/16 v2, 0x58

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 618
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    const/16 p1, 0x32

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick(I)V

    return v1

    :cond_1
    :pswitch_1
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

    .line 630
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 627
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 606
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 607
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 608
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x1e

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick(I)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x28

    .line 612
    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick(I)V

    :cond_6
    :goto_2
    return v1

    .line 635
    :cond_7
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 640
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 650
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 651
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 655
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 4

    .line 813
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 816
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 818
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 819
    invoke-direct {p0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 821
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    if-eqz v1, :cond_1

    .line 823
    iget v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 827
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 831
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 833
    :cond_3
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    .line 834
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 839
    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    goto :goto_1

    .line 837
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseResources()V

    .line 842
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_6

    .line 843
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 844
    iput-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 846
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->resetScreenOn()V

    .line 847
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 849
    invoke-direct {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->setProgressUI(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 834
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5

    const/4 p2, 0x0

    .line 1732
    iput-boolean p2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mRequestTakePicture:Z

    .line 1733
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1735
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    .line 1736
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1739
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    .line 1741
    new-instance v1, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget v2, p2, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iget v3, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;-><init>(II[B[B)V

    .line 1742
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V

    .line 1751
    iget p1, p2, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    .line 1758
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isZslMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1760
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x32

    .line 1764
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1766
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1768
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1769
    iget-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz p1, :cond_3

    .line 1772
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {p1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1773
    iput p2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1774
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_1

    .line 1755
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 1779
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1780
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string p1, "onPictureTaken done"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1737
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1779
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onPictureTakenPreview([B)V
    .locals 6

    .line 1391
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1392
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-nez v1, :cond_0

    .line 1393
    monitor-exit v0

    return-void

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    .line 1398
    new-instance v2, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget v3, v1, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iget v4, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;-><init>(II[B[B)V

    .line 1399
    invoke-direct {p0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->addStillImage(Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;)V

    .line 1407
    iget p1, v1, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1

    .line 1414
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1415
    iget-boolean p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-eqz p1, :cond_2

    .line 1418
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {p1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1419
    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1420
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 1411
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 1424
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1235
    sget-object v1, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v2, "onPreviewFrame"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v1, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1237
    :try_start_0
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    if-eqz v2, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    .line 1241
    :cond_0
    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 1242
    iget v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1243
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1244
    monitor-exit v1

    return-void

    .line 1247
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xb0

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 1250
    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    .line 1251
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mSensorSyncObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1253
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1254
    :try_start_2
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    const/4 v5, 0x0

    aput v5, v4, v5

    .line 1255
    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget v8, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mUseImage:I

    iget-object v9, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    iget-object v10, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMotionData:[B

    iget-object v11, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    iget-object v12, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    .line 1257
    sget-object v7, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v8, "%s:attachPreview() -> 0x%x"

    new-array v9, v6, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_2
    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewFrame attachPreview status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    aget v4, v4, v5

    if-eqz v4, :cond_3

    .line 1261
    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":attachPreview Status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1270
    :pswitch_1
    invoke-direct {v0, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 1271
    monitor-exit v1

    return-void

    .line 1273
    :pswitch_2
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    invoke-virtual {v4, v7}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getMoveSpeed([I)I

    goto :goto_0

    .line 1265
    :pswitch_3
    invoke-direct {v0, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(Z)V

    .line 1266
    monitor-exit v1

    return-void

    .line 1278
    :cond_3
    :goto_0
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    invoke-virtual {v4, v7}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getCurrentDirection([I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1280
    sget-object v7, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v8, "%s:getCurrentDirection() -> 0x%x"

    new-array v9, v6, [Ljava/lang/Object;

    sget-object v10, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    aput-object v10, v9, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_4
    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/16 v7, 0x8

    if-eqz v4, :cond_c

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eq v4, v3, :cond_c

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    if-eq v4, v7, :cond_c

    .line 1287
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1288
    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1289
    iget-object v8, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1290
    iget-object v9, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1291
    new-instance v10, Landroid/graphics/Canvas;

    iget-object v11, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1292
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1293
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v5, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1295
    iget v12, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/2addr v12, v6

    sub-int/2addr v7, v12

    .line 1296
    new-instance v12, Landroid/graphics/Rect;

    iget v13, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v14, v7, 0xa

    div-int/lit8 v14, v14, 0x64

    add-int/2addr v13, v14

    iget v14, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    mul-int/lit8 v15, v7, 0x5a

    div-int/lit8 v15, v15, 0x64

    add-int/2addr v14, v15

    invoke-direct {v12, v5, v13, v4, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1298
    iget-object v13, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewImage:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v12, v11, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1301
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 1302
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 1303
    iget-object v12, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    invoke-virtual {v12, v10, v11}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I

    .line 1304
    sget-object v12, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onPreviewFrame getGuidancePos attachedPos="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "  guidePos "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v12, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v12, v12, v5

    if-eq v12, v6, :cond_5

    const/4 v13, 0x3

    if-eq v12, v13, :cond_5

    goto :goto_2

    .line 1308
    :cond_5
    iget-object v12, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v12, v12, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    const/16 v13, 0xb4

    if-ne v12, v13, :cond_6

    goto :goto_1

    .line 1312
    :cond_6
    iget v12, v10, Landroid/graphics/Point;->x:I

    iget v13, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v12, v13

    iput v12, v10, Landroid/graphics/Point;->x:I

    .line 1313
    iget v12, v11, Landroid/graphics/Point;->x:I

    iget v13, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 1309
    :cond_7
    :goto_1
    iget v12, v10, Landroid/graphics/Point;->y:I

    iget v13, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v12, v13

    iput v12, v10, Landroid/graphics/Point;->y:I

    .line 1310
    iget v12, v11, Landroid/graphics/Point;->y:I

    iget v13, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCroppingAdjustByAuto:I

    sub-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Point;->y:I

    .line 1318
    :goto_2
    iget v12, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_9

    if-ge v8, v9, :cond_8

    int-to-float v8, v9

    int-to-float v9, v7

    :goto_3
    div-float/2addr v8, v9

    goto :goto_4

    :cond_8
    int-to-float v8, v8

    int-to-float v9, v4

    goto :goto_3

    .line 1319
    :goto_4
    iput v8, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    .line 1321
    :cond_9
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/2addr v4, v6

    iput v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    .line 1322
    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    if-eqz v4, :cond_a

    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    cmpl-float v4, v4, v13

    if-eqz v4, :cond_a

    .line 1323
    iget v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    int-to-float v4, v4

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    .line 1325
    :cond_a
    iget v4, v10, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v10, Landroid/graphics/Point;->x:I

    .line 1326
    iget v4, v10, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v10, Landroid/graphics/Point;->y:I

    .line 1327
    iget v4, v11, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Point;->x:I

    .line 1328
    iget v4, v11, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Point;->y:I

    .line 1329
    sget-object v4, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreviewFrame change position with ratio Point="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " output_rotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v7, v7, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->output_rotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mDirection[0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMorphoPanoramaGP:Lcom/android/camera/panorama/MorphoPanoramaGP;

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    invoke-virtual {v4, v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getMoveSpeed([I)I

    .line 1334
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    aget v4, v4, v5

    const/4 v6, 0x5

    if-ne v4, v6, :cond_b

    goto :goto_5

    :cond_b
    move v3, v5

    :goto_5
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mMoveSpeed:[I

    aget v4, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDirectionTooFast(ZI)V

    .line 1335
    iget v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewRefY:I

    invoke-interface {v2, v10, v3}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDirectionPosition(Landroid/graphics/Point;I)V

    .line 1337
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onPreviewMoving()V

    .line 1338
    iget-boolean v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureOrientationDecided:Z

    if-nez v3, :cond_d

    .line 1339
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onCaptureOrientationDecided()V

    goto :goto_6

    .line 1343
    :cond_c
    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v4, v4, v5

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v4, v4, v5

    if-eq v4, v3, :cond_d

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v3, v3, v5

    if-eq v3, v7, :cond_d

    .line 1346
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onCaptureOrientationDecided()V

    .line 1350
    :cond_d
    :goto_6
    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    .line 1351
    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    aget v2, v2, v5

    if-ltz v2, :cond_e

    .line 1355
    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;

    iget-object v4, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mImageID:[I

    aget v4, v4, v5

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mStatus:[I

    aget v6, v6, v5

    invoke-direct {v3, v4, v6}, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1357
    new-instance v3, Lcom/android/camera/module/MorphoPanoramaModule$2;

    move-object/from16 v4, p1

    invoke-direct {v3, v0, v4}, Lcom/android/camera/module/MorphoPanoramaModule$2;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 1382
    :cond_e
    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1385
    :goto_7
    iget-object v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mDirection:[I

    aget v2, v2, v5

    iput v2, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    .line 1386
    sget-object v2, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreviewFrame mPrevDirection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 1253
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1238
    :cond_f
    :goto_8
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    .line 1387
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 1

    .line 380
    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    if-ne p1, v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->animateSwitchCamera()V

    .line 382
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 786
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 789
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCameraDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mWaitForRelease="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPreview()V

    .line 793
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    .line 795
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    .line 798
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 799
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 801
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 802
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOnAwhile()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 0

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 0

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 1

    .line 662
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 669
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 673
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setTriggerMode(I)V

    .line 675
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSyncObj:Ljava/lang/Object;

    monitor-enter p1

    .line 676
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 677
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 678
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPanoramaShooting()V

    goto :goto_0

    .line 680
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isShootingTooShort()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v0, "panorama shooting is too short, ignore this click"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    monitor-exit p1

    return-void

    :cond_3
    const/4 v0, 0x3

    .line 684
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const/4 v0, 0x1

    .line 685
    invoke-direct {p0, v0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(ZZ)V

    .line 687
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0

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

    .line 701
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 855
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 857
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->releaseResources()V

    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0

    .line 735
    iget-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 736
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->gotoGallery()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 3

    .line 425
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "from_where"

    const/16 v2, 0xa6

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":miui:starting_window_label"

    .line 429
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "StartActivityWhenLocked"

    .line 432
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 435
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->trackGotoSettings()V

    return-void
.end method

.method protected performVolumeKeyClicked(Ljava/lang/String;IZ)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const/16 p1, 0x14

    .line 588
    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->onShutterButtonClick(I)V

    :cond_0
    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 0

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 216
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 217
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xae
        0xa4
    .end array-data
.end method

.method protected removeHandlerMessages()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 808
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1227
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz p0, :cond_0

    .line 1229
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->requestRender()V

    :cond_0
    return-void
.end method

.method public startPanoramaShooting()V
    .locals 3

    .line 1036
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "startPanoramaShooting"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1040
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->startPanoramaGP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1041
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v0, "startPanoramaGP failed"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;

    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;->direction:I

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPrevDirection:I

    const/4 v0, -0x1

    .line 1047
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewCount:I

    const/4 v0, 0x0

    .line 1048
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntReqShoot:I

    .line 1049
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCntProcessed:I

    .line 1050
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCaptureInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTimeTaken:J

    const/4 v0, 0x0

    .line 1052
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewDisplayRatio:F

    const/4 v0, 0x1

    .line 1053
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPreviewSkipCount:I

    .line 1054
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mDeviceOrientationAtCapture:I

    .line 1055
    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mIsShooting:Z

    .line 1058
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1059
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1060
    :cond_3
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    .line 1061
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1062
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mSnapshotFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1064
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_4

    .line 1066
    sget-object p0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v0, "startPanoramaShooting: mCameraDevice is null."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1069
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1070
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraPreviewBuff:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1071
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1074
    invoke-direct {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->setShootUI()V

    .line 1076
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1077
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    .line 1079
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mPanoramaShootingStartTime:J

    .line 1080
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->keepScreenOn()V

    .line 1082
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 872
    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->stopPreview()V

    .line 876
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 877
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 879
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 880
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAeLockSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 883
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_3

    .line 884
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 886
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 889
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setPreviewTexture()V

    .line 890
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    const/4 v0, 0x1

    .line 891
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 897
    sget-object v0, Lcom/android/camera/module/MorphoPanoramaModule;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    :cond_0
    const/4 v0, 0x0

    .line 900
    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraState:I

    return-void
.end method

.method protected trackModeCustomInfo(I)V
    .locals 3

    .line 1636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1638
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getPanoramaMoveDirection(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x4

    if-ne v1, p0, :cond_0

    const-string p0, "\u4ece\u5de6\u5f80\u53f3"

    goto :goto_0

    :cond_0
    const-string p0, "\u4ece\u53f3\u5f80\u5de6"

    :goto_0
    const-string v1, "\u65b9\u5411"

    .line 1637
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, p1

    const-string v1, "capture"

    const-string v2, "picture_taken_panorama"

    .line 1640
    invoke-static {v1, v2, p0, p1, v0}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 0

    .line 224
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method
