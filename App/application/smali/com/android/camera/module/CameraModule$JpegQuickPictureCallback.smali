.class final Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field mPressDownTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .locals 0

    .line 1943
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1944
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method

.method private getBurstShotTitle(ZZ)Ljava/lang/String;
    .locals 6

    .line 1948
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$6600(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-ne v2, v1, :cond_0

    .line 1950
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    .line 1951
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/module/CameraModule;->access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_UBIFOCUS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1955
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_BURST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1956
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1958
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/camera/Util;->createJpegName(JZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1959
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_2

    .line 1960
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const-wide/16 v4, 0x3e8

    add-long/2addr v1, v4

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/camera/Util;->createJpegName(JZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/module/CameraModule;->access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1963
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$4300(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 1968
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JpegQuickPictureCallback onPictureTaken mReceivedJpegCallbackNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    array-length v3, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v2, :cond_1a

    if-eqz v15, :cond_1a

    iget v2, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v3, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_1a

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 1970
    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_d

    .line 1974
    :cond_1
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v14, 0x0

    const/4 v13, 0x1

    if-ne v2, v13, :cond_4

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isMultiSnapStopRequested()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1976
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$4200(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1977
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 1980
    :cond_2
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$6600(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1981
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$4800(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1982
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$4500(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v1

    invoke-direct {v0, v14, v14}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle(ZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->changeJpegTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1984
    :cond_3
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-direct {v0, v14, v14}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle(ZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1990
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v1, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_6

    .line 1991
    iget v2, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v1, v2, v13}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(IZ)V

    .line 1992
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v3, :cond_5

    move v14, v13

    :cond_5
    invoke-virtual {v1, v2, v13, v14}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(IZZ)V

    .line 1993
    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$6700(Lcom/android/camera/module/CameraModule;)V

    :cond_6
    return-void

    .line 1998
    :cond_7
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_8

    .line 1999
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 2002
    :cond_8
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/2addr v3, v13

    iput v3, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 2004
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xb8

    .line 2005
    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;

    .line 2006
    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;->setSnapNumValue(I)V

    .line 2007
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-gt v3, v1, :cond_9

    move v12, v13

    goto :goto_2

    :cond_9
    move v12, v14

    :goto_2
    if-eqz v12, :cond_a

    move/from16 v16, v14

    goto :goto_3

    .line 2009
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v1

    move/from16 v16, v1

    .line 2011
    :goto_3
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v1, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int v3, v3, v16

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_b

    .line 2012
    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    .line 2013
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    goto :goto_4

    .line 2015
    :cond_b
    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    .line 2016
    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    :goto_4
    move v10, v1

    move v9, v3

    .line 2019
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    sub-int/2addr v1, v13

    if-ne v3, v1, :cond_c

    move v11, v13

    goto :goto_5

    :cond_c
    move v11, v14

    .line 2021
    :goto_5
    invoke-direct {v0, v12, v11}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle(ZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    .line 2024
    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v3

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v5, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2025
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    :cond_d
    move-object v8, v1

    .line 2027
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    const/4 v7, 0x5

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-eq v3, v1, :cond_e

    goto :goto_6

    :cond_e
    move/from16 v17, v11

    goto :goto_9

    .line 2029
    :cond_f
    :goto_6
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-ne v3, v13, :cond_10

    goto :goto_8

    .line 2031
    :cond_10
    iget v2, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-eq v3, v2, :cond_12

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isMultiSnapStopRequested()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    move v2, v7

    goto :goto_8

    :cond_12
    :goto_7
    const/4 v1, 0x6

    move v2, v1

    .line 2037
    :goto_8
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 2051
    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v20

    move-object/from16 v3, p1

    move-object/from16 v7, v17

    move/from16 v17, v11

    move-object/from16 v11, v18

    move/from16 v18, v12

    move/from16 v12, v16

    move/from16 v13, v18

    move/from16 v14, v17

    move/from16 v15, v19

    move-object/from16 v16, v20

    .line 2037
    invoke-virtual/range {v1 .. v16}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 2053
    :goto_9
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v3, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_15

    iget-object v2, v1, Lcom/android/camera/module/CameraModule;->mMultiSnapStopState:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    sget-object v3, Lcom/android/camera/module/CameraModule$MultiSnapStopState;->REQUEST:Lcom/android/camera/module/CameraModule$MultiSnapStopState;

    if-ne v2, v3, :cond_13

    goto :goto_a

    .line 2082
    :cond_13
    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v17, :cond_14

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Util;->isProduceFocusInfoSuccess([B)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2083
    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const v1, 0x7f0f0476

    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    goto/16 :goto_d

    .line 2088
    :cond_14
    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$6800(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$BurstSpeedController;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->access$6900(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V

    goto/16 :goto_d

    .line 2054
    :cond_15
    :goto_a
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v5, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v2, v5

    iput-wide v2, v1, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 2055
    iget-object v1, v4, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2057
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/android/camera/module/CameraModule;->access$1800(Lcom/android/camera/module/CameraModule;ZZ)V

    .line 2058
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    goto :goto_b

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2061
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xc2

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$SnapLongStatusMonitor;

    if-eqz v1, :cond_17

    .line 2062
    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v4, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-lt v5, v4, :cond_17

    .line 2063
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$SnapLongStatusMonitor;->onSnapLongReachLimit()V

    .line 2065
    :cond_17
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$6700(Lcom/android/camera/module/CameraModule;)V

    .line 2067
    :goto_b
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v13, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    goto :goto_c

    :cond_18
    move v13, v3

    .line 2068
    :goto_c
    iget-object v1, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 2069
    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4, v13, v1}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(IZ)V

    .line 2070
    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v5, :cond_19

    move v2, v3

    :cond_19
    invoke-virtual {v4, v13, v1, v2}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(IZZ)V

    .line 2072
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst shooting finished. Total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "pictures, cost consuming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v3, v0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_d
    return-void
.end method
