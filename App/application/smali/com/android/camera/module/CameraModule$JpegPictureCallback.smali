.class public Lcom/android/camera/module/CameraModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field protected mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1452
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 1453
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "Invalid state: mParameters is null. Is your module alive?"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1459
    :cond_0
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JpegPictureCallback#onPictureTaken data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v4, "null"

    goto :goto_0

    :cond_1
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/android/camera/module/CameraModule;->access$4102(Lcom/android/camera/module/CameraModule;J)J

    .line 1464
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3700(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_2

    .line 1465
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1466
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4100(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v5

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$3700(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto :goto_1

    .line 1467
    :cond_2
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3800(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    .line 1468
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1469
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4100(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v5

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$3800(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto :goto_1

    .line 1471
    :cond_3
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1472
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4100(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v5

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$3400(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 1474
    :goto_1
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v5, v5, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4200(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1478
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 1483
    :cond_4
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v6, v2, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v3, v6, :cond_5

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    if-nez v1, :cond_7

    :cond_6
    return-void

    .line 1488
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v7, v2, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ne v6, v7, :cond_9

    .line 1492
    invoke-static {v2, v4, v3}, Lcom/android/camera/module/CameraModule;->access$1800(Lcom/android/camera/module/CameraModule;ZZ)V

    .line 1494
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1495
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2, v3}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 1496
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$1900(Lcom/android/camera/module/CameraModule;)V

    .line 1501
    :cond_9
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1502
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v6

    .line 1505
    sget-object v7, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "orientation from exif -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", jpeg rottaion-> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v9, v9, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-static {}, Lcom/android/camera/Device;->isUDCFPortraitNeedRotation()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v6, :cond_a

    .line 1507
    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v6, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    move v7, v4

    goto :goto_2

    :cond_a
    move v7, v3

    .line 1512
    :goto_2
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v8, v8, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v8, v6

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_b

    .line 1513
    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    .line 1514
    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_3

    .line 1516
    :cond_b
    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    .line 1517
    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    :goto_3
    move v15, v8

    .line 1520
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/camera/module/CameraModule;->access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1522
    invoke-static {}, Lcom/android/camera/Device;->isSupportParallelProcess()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1523
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v8}, Lcom/android/camera/module/CameraModule;->getParallelProcessingFileTitle()Ljava/lang/String;

    move-result-object v8

    .line 1524
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1525
    iget-object v10, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v10, v8}, Lcom/android/camera/module/CameraModule;->access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1526
    sget-object v8, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[parallel] fileTitle is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v11}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->enableAlgorithmInFileSuffix()Z

    move-result v8

    if-nez v8, :cond_d

    .line 1532
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v8, v8, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v8}, Lcom/android/camera/MutexModeManager;->getAlgorithmName()Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    goto :goto_4

    :cond_d
    move-object v14, v9

    .line 1535
    :goto_4
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1536
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v13, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v13}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/camera/Util;->createJpegName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v11}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/module/CameraModule;->access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1539
    :cond_e
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v13

    .line 1540
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v8}, Lcom/android/camera/module/BaseModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v11

    if-eqz v7, :cond_f

    .line 1544
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7, v1, v6}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;[BI)[B

    move-result-object v1

    .line 1548
    :cond_f
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v7, v7, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v7

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v8, v8, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1549
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object v12, v7

    goto :goto_5

    :cond_10
    move-object v12, v9

    .line 1551
    :goto_5
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$4500(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v7

    if-nez v7, :cond_12

    :cond_11
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1552
    invoke-virtual {v7}, Lcom/android/camera/module/CameraModule;->isBackPortraitDynamicSpotOn()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1553
    :cond_12
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$1500(Lcom/android/camera/module/CameraModule;)I

    move-result v7

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->access$1600(Lcom/android/camera/module/CameraModule;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1554
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->access$1500(Lcom/android/camera/module/CameraModule;)I

    move-result v8

    iget-object v10, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v10}, Lcom/android/camera/module/CameraModule;->access$1600(Lcom/android/camera/module/CameraModule;)I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1555
    new-instance v10, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    invoke-direct {v10}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;-><init>()V

    .line 1556
    invoke-virtual {v10, v1}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->data([B)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    invoke-virtual {v10, v15, v2}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->size(II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    if-le v15, v2, :cond_13

    move v9, v7

    goto :goto_6

    :cond_13
    move v9, v8

    :goto_6
    if-le v2, v15, :cond_14

    goto :goto_7

    :cond_14
    move v7, v8

    .line 1557
    :goto_7
    invoke-virtual {v10, v9, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->previewSize(II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1560
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->effectIndex(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1561
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectController;->copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->effectRectAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1562
    invoke-virtual {v10, v12}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->location(Landroid/location/Location;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1563
    invoke-virtual {v10, v13}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->title(Ljava/lang/String;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->date(J)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$4700(Lcom/android/camera/module/CameraModule;)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->orientation(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    invoke-virtual {v10, v6}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegOrientation(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1564
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$4600(Lcom/android/camera/module/CameraModule;)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_15

    const/4 v7, 0x0

    goto :goto_8

    :cond_15
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$4600(Lcom/android/camera/module/CameraModule;)F

    move-result v7

    :goto_8
    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->shootRotation(F)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1565
    invoke-virtual {v7}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_16

    sget-object v7, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v8, v8, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v8}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v7

    if-nez v7, :cond_16

    move v7, v4

    goto :goto_9

    :cond_16
    move v7, v3

    :goto_9
    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->mirror(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1566
    invoke-virtual {v10, v14}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->algorithmName(Ljava/lang/String;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    invoke-virtual {v10, v11}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->pictureInfo(Lcom/android/camera/PictureInfo;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1567
    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v7

    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->applyWaterMark(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1568
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v7

    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->applyTimeWaterMark(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1569
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v7

    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->applyDualCameraWaterMark(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    .line 1570
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v7

    invoke-virtual {v10, v7}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->applySquare(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;

    invoke-virtual {v10}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->build()Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    move-result-object v9

    .line 1571
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v7}, Lcom/android/camera/module/CameraModule;->isBackPortraitDynamicSpotOn()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1572
    invoke-virtual {v9}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->decomposeDynamicSpotData()[B

    move-result-object v7

    if-eqz v7, :cond_18

    move-object v1, v7

    goto :goto_a

    :cond_17
    const/4 v9, 0x0

    .line 1580
    :cond_18
    :goto_a
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v7, v4, v3}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(IZ)V

    .line 1581
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v8, :cond_19

    move v8, v4

    goto :goto_b

    :cond_19
    move v8, v3

    :goto_b
    invoke-virtual {v7, v4, v3, v8}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(IZZ)V

    .line 1582
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v8, v7, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v8, :cond_24

    .line 1583
    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$4500(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v7

    if-eqz v7, :cond_1b

    if-eqz v9, :cond_1b

    .line 1585
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$4500(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1586
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1, v4}, Lcom/android/camera/module/CameraModule;->access$4802(Lcom/android/camera/module/CameraModule;Z)Z

    goto/16 :goto_e

    .line 1588
    :cond_1a
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/android/camera/module/CameraModule;->access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_e

    :cond_1b
    const/4 v7, 0x0

    .line 1590
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)Z

    move-result v8

    const/4 v10, 0x2

    if-eqz v8, :cond_20

    .line 1591
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$4900(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/camera/groupshot/GroupShot;->attach([B)I

    move-result v7

    .line 1592
    sget-object v8, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v10, [Ljava/lang/Object;

    .line 1593
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v3

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v7, v7, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v4

    const-string v7, "mGroupShot attach() = 0x%08x index=%d"

    .line 1592
    invoke-static {v9, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v7, v8, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v9, v8, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v7, v9, :cond_1f

    if-ne v7, v4, :cond_1c

    .line 1596
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1598
    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f050011

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const-string v7, "pref_groupshot_with_primitive_picture_key"

    .line 1596
    invoke-virtual {v4, v7, v5}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1599
    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v7

    const/16 v8, 0xa

    .line 1603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v9, v1

    move-object v10, v13

    move-object/from16 v24, v11

    move-object/from16 v16, v12

    move-wide v11, v4

    move-object v13, v14

    move-object/from16 v14, v16

    move/from16 v16, v2

    move/from16 v18, v6

    move-object/from16 v22, v24

    .line 1599
    invoke-virtual/range {v7 .. v22}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 1615
    :cond_1c
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1616
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1618
    :cond_1d
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 1620
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1619
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_c

    :cond_1e
    const/16 v3, 0x64

    .line 1621
    :goto_c
    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    int-to-long v2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1f
    move-object/from16 v16, v12

    .line 1624
    new-instance v1, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;

    .line 1625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1626
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$4900(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v4

    move-object v7, v1

    move-object/from16 v11, v16

    move v12, v15

    move-object/from16 v17, v13

    move v13, v2

    move v14, v6

    move-object/from16 v15, v17

    move-object/from16 v16, v4

    invoke-direct/range {v7 .. v16}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;-><init>(Lcom/android/camera/module/CameraModule;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/groupshot/GroupShot;)V

    .line 1627
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1628
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$5004(Lcom/android/camera/module/CameraModule;)I

    goto :goto_e

    :cond_20
    move-object/from16 v24, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    if-eqz v9, :cond_21

    .line 1632
    invoke-virtual {v9}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->getDepthData()[B

    move-result-object v8

    if-eqz v8, :cond_21

    .line 1633
    invoke-virtual {v9}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->composeDynamicSpotData()V

    .line 1634
    iget-object v1, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 1635
    iget-object v7, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    :cond_21
    move-object v9, v1

    move-object v1, v7

    .line 1637
    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v7, v7, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v7

    .line 1638
    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v8, v8, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v8}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v8

    if-eqz v8, :cond_22

    move v8, v10

    goto :goto_d

    :cond_22
    move v8, v4

    .line 1642
    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1652
    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->isParallelProcessing()Z

    move-result v22

    move-object/from16 v10, v17

    move-object v4, v14

    move-object/from16 v14, v16

    move/from16 v16, v2

    move-object/from16 v17, v1

    move/from16 v18, v6

    move-object/from16 v23, v4

    .line 1637
    invoke-virtual/range {v7 .. v24}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    .line 1656
    :goto_e
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1657
    :cond_23
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    goto/16 :goto_10

    :cond_24
    move-object/from16 v24, v11

    .line 1660
    invoke-virtual {v7, v4}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1661
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$4500(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v2

    if-eqz v2, :cond_25

    if-eqz v9, :cond_25

    .line 1662
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$4500(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    .line 1663
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v9, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-static {v1, v2}, Lcom/android/camera/module/CameraModule;->access$5102(Lcom/android/camera/module/CameraModule;[B)[B

    goto :goto_f

    .line 1665
    :cond_25
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/PictureInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/module/CameraModule;->access$5102(Lcom/android/camera/module/CameraModule;[B)[B

    .line 1667
    :goto_f
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$5200(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1668
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$5300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v1

    .line 1669
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v1, "no-fusion-id!"

    .line 1672
    :cond_26
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$5400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v15

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 1673
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1674
    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$5500(Lcom/android/camera/module/CameraModule;)V

    .line 1675
    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->access$5600(Lcom/android/camera/module/CameraModule;Ljava/lang/String;I)V

    return-void

    .line 1678
    :cond_27
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v1, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    if-nez v2, :cond_28

    int-to-double v7, v15

    .line 1679
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1600(Lcom/android/camera/module/CameraModule;)I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1680
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 1682
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$5100(Lcom/android/camera/module/CameraModule;)[B

    move-result-object v2

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1683
    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$4700(Lcom/android/camera/module/CameraModule;)I

    move-result v7

    rsub-int v7, v7, 0x168

    add-int/2addr v7, v6

    iget-object v6, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v6, v6, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    add-int/2addr v7, v6

    .line 1682
    invoke-static {v2, v7, v3, v1}, Lcom/android/camera/Thumbnail;->createBitmap([BIZI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1686
    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v2, :cond_29

    .line 1687
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    .line 1688
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$5700(Lcom/android/camera/module/CameraModule;)V

    .line 1689
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1, v4}, Lcom/android/camera/module/CameraModule;->access$5802(Lcom/android/camera/module/CameraModule;Z)Z

    goto :goto_10

    .line 1692
    :cond_28
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$5900(Lcom/android/camera/module/CameraModule;)V

    .line 1697
    :cond_29
    :goto_10
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v1, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v4, 0xac

    if-ne v2, v4, :cond_2b

    .line 1698
    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1699
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1, v3}, Lcom/android/camera/module/CameraModule;->access$6002(Lcom/android/camera/module/CameraModule;Z)Z

    .line 1700
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$6100(Lcom/android/camera/module/CameraModule;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$6100(Lcom/android/camera/module/CameraModule;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1701
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$6100(Lcom/android/camera/module/CameraModule;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1703
    :cond_2a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc6

    .line 1704
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v1, :cond_2b

    .line 1706
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    .line 1710
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1711
    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$4100(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v6

    sub-long v6, v1, v6

    iput-wide v6, v4, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    .line 1712
    sget-object v4, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mJpegCallbackFinishTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v7, v7, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackCaptureTimeEnd()V

    .line 1714
    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v6, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long v6, v1, v6

    invoke-static {v4, v6, v7}, Lcom/android/camera/module/CameraModule;->access$6200(Lcom/android/camera/module/CameraModule;J)V

    .line 1715
    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v6, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v1, v6

    iput-wide v1, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1717
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v6, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1721
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1724
    :cond_2c
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$6300(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v1

    if-nez v1, :cond_2d

    .line 1725
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$2600(Lcom/android/camera/module/CameraModule;)V

    .line 1726
    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->access$6302(Lcom/android/camera/module/CameraModule;Z)Z

    :cond_2d
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 1447
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method
