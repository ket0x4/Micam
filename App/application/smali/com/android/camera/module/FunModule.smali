.class public Lcom/android/camera/module/FunModule;
.super Lcom/android/camera/module/VideoBase;
.source "FunModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$StickerProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/FunModule$SaveVideoTask;
    }
.end annotation


# static fields
.field private static final SMART_BUTTON_ENABLE_DELAY:I

.field private static final TAG:Ljava/lang/String; = "FunModule"


# instance fields
.field private mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mFocusStartTime:J

.field private mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field private mMaxVideoDurationInMs:I

.field private final mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

.field private mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field private mPendingSaveTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/module/FunModule$SaveVideoTask;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    invoke-static {}, Lcom/android/camera/Device;->useLongDelayToEnableVideoStop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    sput v0, Lcom/android/camera/module/FunModule;->SMART_BUTTON_ENABLE_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;-><init>()V

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    .line 1358
    new-instance v0, Lcom/android/camera/module/FunModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/FunModule$2;-><init>(Lcom/android/camera/module/FunModule;)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/FunModule;)Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/module/FunModule;Z)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/camera/module/FunModule;->postPendingSaveTask(Z)V

    return-void
.end method

.method private convertToFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private generateVideoFilename(I)V
    .locals 8

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 710
    invoke-static {p1}, Lcom/android/camera/module/VideoBase;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v2

    .line 711
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v4, ""

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/camera/Util;->generateVideoName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-static {p1}, Lcom/android/camera/module/VideoBase;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p1

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 717
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0x8

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v6, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 718
    iget-object v6, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "_display_name"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 721
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object p1, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object p1, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    .line 724
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    .line 723
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 726
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 728
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "longitude"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 730
    :cond_1
    iput-object v5, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    .line 731
    sget-object p1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new video filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 5

    .line 311
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 316
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 319
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/feature/DataItemFeature;->getFunModulePreviewSizeLimit()I

    move-result v2

    if-lez v2, :cond_1

    .line 320
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    .line 321
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 323
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 325
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v3

    if-le v4, v1, :cond_2

    .line 326
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 333
    :cond_3
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 334
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    goto :goto_2

    :cond_4
    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    .line 333
    :goto_2
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 336
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    .line 337
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    .line 339
    :cond_5
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initializeRecorder()V
    .locals 8

    .line 624
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 626
    sget-object p0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v0, "initializeRecorder: null camera"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeVideoFileDescriptor()V

    .line 632
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 633
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getExtraSavedUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "rw"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 638
    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 641
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->convertToFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 650
    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->generateVideoFilename(I)V

    .line 651
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    .line 654
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseLastMediaRecorder()V

    .line 655
    new-instance v1, Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-direct {v1, v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 656
    new-instance v2, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v4, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    iget v5, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    iget v6, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/module/encoder/MediaVideoEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;IILcom/android/camera/ActivityBase;)V

    .line 657
    new-instance v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/module/encoder/MediaAudioEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;I)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 665
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f0f01da

    .line 670
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_audio_focus_key"

    .line 668
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v0, 0x7f0f01de

    .line 673
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    :goto_2
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set AudioParam camcorder_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 679
    :cond_4
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_5

    .line 681
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 683
    :cond_5
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/VideoBase;->mOrientationCompensationAtRecordStart:I

    return-void

    :catch_1
    move-exception p0

    .line 660
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private postPendingSaveTask(Z)V
    .locals 4

    .line 737
    monitor-enter p0

    .line 738
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/FunModule$SaveVideoTask;

    .line 740
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postPendingSaveTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;)V

    if-eqz p1, :cond_0

    .line 746
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private releaseLastMediaRecorder()V
    .locals 3

    .line 687
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseLastMediaRecorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->join()V

    const/4 v0, 0x0

    .line 690
    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    :cond_1
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 5

    .line 695
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 697
    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 698
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->cleanupEmptyFile()V

    .line 699
    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 701
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore AudioParam camcorder_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0f01da

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camcorder_mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 705
    :cond_1
    iput-object v1, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    return-void
.end method

.method private releaseResources()V
    .locals 1

    .line 1345
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    .line 1346
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    .line 1347
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseLastMediaRecorder()V

    const/4 v0, 0x0

    .line 1348
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    return-void
.end method

.method private setOrientationParameter()V
    .locals 3

    .line 1176
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    .line 1177
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 1179
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getRotation(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1181
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method private setVideoSize(II)V
    .locals 1

    .line 478
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 479
    iput p1, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    .line 480
    iput p2, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    goto :goto_0

    .line 482
    :cond_0
    iput p2, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    .line 483
    iput p1, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    :goto_0
    return-void
.end method

.method private startVideoRecording()Z
    .locals 6

    .line 813
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    .line 816
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->silenceSounds()V

    .line 817
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->prepareRecording()V

    .line 818
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startRecordVideo()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 819
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 820
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 821
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->restoreMusicSound()V

    .line 823
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 824
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return v2

    .line 827
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/module/VideoBase;->isSmartShutterButtonEnable:Z

    .line 828
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    sget v4, Lcom/android/camera/module/FunModule;->SMART_BUTTON_ENABLE_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 829
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 832
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v1, "startVideoRecording process done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 838
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.start_video_recording"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 839
    iput-boolean v3, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    .line 840
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mRecordingStartTime:J

    .line 841
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 842
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v1, "listen call state"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->updateRecordingTime()V

    .line 845
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepScreenOn()V

    .line 846
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 847
    invoke-virtual {p0, v3, v2}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(IZ)V

    .line 848
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->trackVideoRecording()V

    return v3
.end method

.method private stopVideoRecording()V
    .locals 4

    .line 867
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 870
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 871
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 874
    :cond_1
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v1, "stopVideoRecordingAsync start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.stop_video_recording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 876
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 877
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v1, "listen none"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->animateHold()V

    .line 883
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 884
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 891
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 892
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    .line 894
    new-instance v0, Lcom/android/camera/module/FunModule$SaveVideoTask;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mVideoFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/camera/module/FunModule$SaveVideoTask;-><init>(Lcom/android/camera/module/FunModule;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 895
    monitor-enter p0

    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    .line 899
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 900
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->restoreMusicSound()V

    .line 901
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepScreenOnAwhile()V

    .line 902
    iput-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    .line 903
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    return-void

    :catchall_0
    move-exception v0

    .line 897
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private trackVideoRecording()V
    .locals 3

    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 855
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v1, "\u540e\u6444"

    :goto_0
    const-string v2, "\u524d\u540e\u6444"

    .line 854
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u6a21\u5f0f"

    const-string v2, "fun"

    .line 856
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "off"

    :goto_1
    const-string v1, "\u95ea\u5149\u706f"

    .line 857
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 861
    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u7b49\u7ea7"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p0, "capture"

    const-string v1, "video_taken"

    .line 863
    invoke-static {p0, v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateShaderEffect()V
    .locals 3

    .line 184
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result p0

    .line 185
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shaderEffect: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    return-void
.end method


# virtual methods
.method protected autoFocus(IIIIII)V
    .locals 3

    .line 1277
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 1280
    :cond_0
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus focusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFocusAreaSupported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_7

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->cancelAutoFocus()V

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1288
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_3

    .line 1289
    sget-object p0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string p1, "autoFocus get null parameters from device"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1292
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->focusPoint()V

    .line 1294
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    .line 1295
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 1296
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(IIII)Ljava/util/List;

    move-result-object v2

    .line 1295
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 1299
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    if-eq p6, v0, :cond_5

    .line 1300
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 1301
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(IIII)Ljava/util/List;

    move-result-object p4

    .line 1300
    invoke-virtual {v0, v1, p4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 1303
    :cond_5
    iget-object p4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p5, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p4, p5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/camera/module/FunModule;->mFocusStartTime:J

    .line 1305
    iget-object p4, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p4, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewPosition(III)V

    const/4 p1, 0x3

    if-ne p6, p1, :cond_6

    .line 1307
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p2, 0x2

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    .line 1309
    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_7
    return-void
.end method

.method public isCaptureIntent()Z
    .locals 0

    .line 1355
    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    return p0
.end method

.method public isDoingAction()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

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

.method public isNeedMute()Z
    .locals 1

    .line 1341
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

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

.method protected isZoomEnabled()Z
    .locals 0

    .line 808
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p0

    if-nez p0, :cond_0

    .line 809
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5

    .line 1315
    iget-boolean p2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1319
    :cond_0
    sget-object p2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoFocusTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/module/FunModule;->mFocusStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " waitForRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 1320
    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p2}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 1322
    iput-boolean p2, p0, Lcom/android/camera/module/VideoBase;->mInStartingFocusRecording:Z

    .line 1323
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->record()V

    .line 1325
    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    invoke-interface {p2, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->showIndicator(II)V

    if-eqz p1, :cond_3

    .line 1327
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isNeedMute()Z

    move-result p2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/android/camera/module/VideoBase;->mIsTouchFocused:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 1328
    invoke-virtual {p0, p2}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 1330
    :cond_3
    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p2, p1}, Lcom/android/camera/FocusManagerSimple;->onAutoFocus(Z)V

    .line 1331
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 9

    .line 520
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 524
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mStereoSwitchThread:Lcom/android/camera/module/VideoBase$StereoSwitchThread;

    if-eqz v0, :cond_2

    return v1

    .line 533
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_4

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 535
    iget-wide v5, p0, Lcom/android/camera/module/VideoBase;->mLastBackPressedTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xbb8

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    .line 536
    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mLastBackPressedTime:J

    .line 537
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0f041d

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 538
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 540
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    :goto_0
    return v2

    .line 545
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 549
    :cond_5
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Lcom/android/camera/storage/Storage;->isCurrentStorageIsSecondary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchToPhoneStorage()V

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    .line 209
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCameraSwitched()V
    .locals 1

    .line 1214
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onCameraSwitched()V

    .line 1215
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->onCameraOpened()V

    .line 1216
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->initializeCapabilities()V

    const/4 v0, 0x1

    .line 1217
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->updateStereoSettings(Z)V

    .line 1218
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->readVideoPreferences()V

    .line 1219
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->updateVideoParametersPreference()V

    .line 1220
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    .line 1221
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onPreviewStart()V

    .line 1223
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 1226
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeZoom()V

    .line 1227
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeExposureCompensation()V

    .line 1228
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showFirstUseHintIfNeeded()V

    const-string v0, "continuous-video"

    .line 1230
    iput-object v0, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    .line 1231
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(II)V
    .locals 0

    .line 214
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoBase;->onCreate(II)V

    .line 215
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isRestoring()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    .line 221
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoBase;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 223
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showFirstUseHintIfNeeded()V

    const/4 p1, 0x0

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->onCameraOpened()V

    const-string p1, "continuous-video"

    .line 230
    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 237
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onDestroy()V

    .line 238
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    :cond_0
    return-void
.end method

.method public onFilterChanged(II)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateShaderEffect()V

    .line 169
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->updateEffectViewVisible()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 568
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x58

    const/16 v2, 0x18

    if-eq p1, v2, :cond_5

    const/16 v3, 0x19

    if-eq p1, v3, :cond_5

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_1

    const/16 v3, 0x42

    if-eq p1, v3, :cond_1

    const/16 v3, 0x57

    if-eq p1, v3, :cond_5

    if-eq p1, v0, :cond_5

    goto :goto_3

    .line 575
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 576
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreBottom()V

    .line 577
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 580
    :cond_2
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 581
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x1e

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->onShutterButtonClick(I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x28

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->onShutterButtonClick(I)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    if-eq p1, v2, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v1

    .line 597
    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 594
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 605
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1161
    :cond_0
    iput p1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 1162
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 1163
    invoke-static {v0, v1}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v0

    .line 1162
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 1164
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 1168
    iget p1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq p1, p2, :cond_1

    .line 1169
    iput p2, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 1170
    sget-object p1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device orientation change to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->setOrientationParameter()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 399
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    .line 408
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->stopFaceDetection()V

    .line 409
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->waitStereoSwitchThread()V

    .line 410
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    .line 413
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeCamera()V

    goto :goto_1

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 418
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    goto :goto_1

    .line 416
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseResources()V

    :goto_1
    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->updateStereoSettings(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->closeVideoFileDescriptor()V

    .line 432
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 433
    iget-object v2, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 445
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 447
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_4
    const/4 v1, -0x1

    .line 449
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 450
    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 3

    .line 148
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewLayoutChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/graphics/Rect;)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 152
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 153
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderHeight()I

    move-result v2

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 154
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 5

    .line 160
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

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

    .line 161
    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method protected onPreviewStart()V
    .locals 4

    .line 554
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    .line 556
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 560
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    const/4 v1, 0x3

    .line 561
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoBase;->onShutterButtonFocus(ZI)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 358
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 359
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->showFirstUseHintIfNeeded()V

    const/4 v0, 0x1

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->updateStereoSettings(Z)V

    .line 369
    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    if-eqz v1, :cond_3

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    .line 371
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mWaitForRelease:Z

    .line 376
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeZoom()V

    .line 377
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeExposureCompensation()V

    .line 378
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->keepScreenOnAwhile()V

    .line 380
    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_4

    .line 381
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 384
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->onSettingsBack()V

    .line 386
    iget-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v1, :cond_5

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mOnResumeTime:J

    .line 388
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 391
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 393
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 394
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->deleteCurrentVideo()V

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->hideAlert()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->doReturnToCaller(Z)V

    :goto_0
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .line 1190
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    return-void

    .line 1199
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->readVideoPreferences()V

    .line 1201
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1202
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1208
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->setCameraParameters()V

    goto :goto_1

    .line 1204
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->stopPreview()V

    .line 1205
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->resizeForPreviewAspectRatio()V

    .line 1206
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    :goto_1
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 8

    .line 1249
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1250
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1251
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1256
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1257
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1261
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    const-string v0, "auto"

    .line 1262
    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 1265
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mIsTouchFocused:Z

    .line 1266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    .line 1267
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 1268
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 1269
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 1270
    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v5

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 1271
    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v6

    const/4 v7, 0x3

    move-object v1, p0

    .line 1269
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/FunModule;->autoFocus(IIIIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStickerChanged(Ljava/lang/String;)V
    .locals 3

    .line 174
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStickerChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object p0

    .line 177
    instance-of v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSticker(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 455
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 457
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mIsFromStop:Z

    .line 459
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onPause()V

    .line 460
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    .line 461
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mIsFromStop:Z

    .line 469
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/module/FunModule;->postPendingSaveTask(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseResources()V

    .line 474
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    return-void
.end method

.method protected onStopVideoRecording(Z)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    .line 274
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->stopVideoRecording()V

    .line 277
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 278
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    .line 280
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->cancelAutoFocus()V

    .line 282
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    :cond_0
    const-string p1, "continuous-video"

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method protected performVolumeKeyClicked(Ljava/lang/String;IZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->restoreBottom()V

    .line 612
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x14

    .line 613
    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoBase;->onShutterButtonClick(I)V

    :cond_1
    return-void
.end method

.method protected prepareRecording()V
    .locals 0

    return-void
.end method

.method public readVideoPreferences()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->getDesiredPreviewSize()V

    const/16 v0, 0x3bf6

    .line 307
    iput v0, p0, Lcom/android/camera/module/FunModule;->mMaxVideoDurationInMs:I

    return-void
.end method

.method public record()V
    .locals 2

    .line 293
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v1, "record"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->startVideoRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 297
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 298
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 4

    .line 130
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->registerProtocol()V

    .line 131
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 132
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xa4

    aput v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 2

    .line 343
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 347
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    :goto_0
    return-void
.end method

.method protected startPlayVideoActivity()V
    .locals 4

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 255
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t view video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 3

    .line 489
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-nez v1, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 495
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->stopPreview()V

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    .line 500
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/FunModule;->setVideoSize(II)V

    .line 501
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 502
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->setCameraParameters()V

    .line 503
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setPreviewTexture()V

    .line 504
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 505
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->startFaceDetection()V

    .line 506
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected startRecordVideo()Z
    .locals 6

    .line 786
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->initializeRecorder()V

    .line 787
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-nez v0, :cond_0

    .line 788
    sget-object p0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v0, "fail to initialize muxer"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x15e

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/VideoBase;->mRequestStartTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 795
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->startRecording(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 797
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 798
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    const v2, 0x7f0f00b9

    const v3, 0x7f0f00b8

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 801
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    :cond_2
    return v0
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->unRegisterProtocol()V

    .line 140
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 141
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public updateFlashPreference()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 192
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method protected updateRecordingTime()V
    .locals 7

    .line 1006
    iget-boolean v0, p0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 1010
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->updateRecordingTime()V

    .line 1012
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1016
    :cond_1
    new-instance v0, Lcom/android/camera/module/FunModule$1;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mMaxVideoDurationInMs:I

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/FunModule$1;-><init>(Lcom/android/camera/module/FunModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 1034
    iget-object p0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected updateStatusBar(I)V
    .locals 0

    .line 908
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 6

    .line 1056
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1059
    :cond_0
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-size"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const v1, 0x7f0f0373

    .line 1069
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_video_flashmode_key"

    .line 1067
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFlashModeSafely(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoFocusMode()V

    .line 1077
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1078
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateShaderEffect()V

    goto :goto_0

    .line 1080
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    .line 1081
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "colorEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1088
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string v1, "pref_sticker_path_key"

    const-string v2, ""

    .line 1089
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sticker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1096
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_1

    .line 1098
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1100
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1105
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1106
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1109
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1112
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1113
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->isFaceBeautyOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1114
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v3, "videoStabilization: on"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_2

    .line 1118
    :cond_7
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string v3, "videoStabilization: off"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    .line 1123
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1124
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 1125
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->setBeautyParams()V

    .line 1126
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1127
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->disableBokeh(Landroid/hardware/Camera$Parameters;)V

    .line 1130
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    .line 1131
    sget-object v3, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "antiBanding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/BaseModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1133
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 1135
    :cond_9
    iget v0, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/module/VideoBase;->mDesiredPreviewHeight:I

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 1136
    sget-object v3, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uiStyle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget v3, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    if-eq v3, v0, :cond_a

    .line 1138
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 1139
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_a

    .line 1140
    iput-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mHasPendingSwitching:Z

    .line 1144
    :cond_a
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    .line 1147
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1148
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v1, p0}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :cond_b
    :goto_3
    return-void
.end method
