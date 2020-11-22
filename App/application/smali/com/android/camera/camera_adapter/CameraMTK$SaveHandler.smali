.class Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;
.super Landroid/os/Handler;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveHandler"
.end annotation


# instance fields
.field private final mCameraActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mXmpJpegData:[B

.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/os/Looper;Lcom/android/camera/Camera;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    .line 751
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 752
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mCameraActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private saveFile([BLjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 779
    iget-object v1, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$400(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 781
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v13

    .line 782
    iget-object v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->access$500(Lcom/android/camera/camera_adapter/CameraMTK;)I

    move-result v2

    add-int/2addr v2, v13

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 783
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    .line 784
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 786
    :cond_0
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    .line 787
    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    :goto_0
    move v11, v1

    move v10, v2

    .line 790
    iget-object v1, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mCameraActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    if-eqz v1, :cond_1

    .line 792
    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    const/16 v3, 0x8

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    .line 796
    invoke-static {v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$600(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->getLocation()Landroid/location/Location;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    .line 804
    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$700(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/PictureInfo;

    move-result-object v17

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 792
    invoke-virtual/range {v2 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 757
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save handleMessage msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg.obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2714

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/stereo/StereoDataGroup;

    .line 762
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    .line 763
    invoke-virtual {p1}, Lcom/android/camera/stereo/StereoDataGroup;->getPictureName()Ljava/lang/String;

    move-result-object v1

    .line 764
    invoke-virtual {p1}, Lcom/android/camera/stereo/StereoDataGroup;->getOriginalJpegData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/stereo/StereoDataGroup;->getJpsData()[B

    move-result-object v3

    .line 765
    invoke-virtual {p1}, Lcom/android/camera/stereo/StereoDataGroup;->getMaskAndConfigData()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/stereo/StereoDataGroup;->getClearImage()[B

    move-result-object v5

    .line 766
    invoke-virtual {p1}, Lcom/android/camera/stereo/StereoDataGroup;->getDepthMap()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/camera/stereo/StereoDataGroup;->getLdcData()[B

    move-result-object v7

    .line 762
    invoke-static/range {v0 .. v7}, Lcom/android/camera/camera_adapter/CameraMTK;->access$300(Lcom/android/camera/camera_adapter/CameraMTK;Ljava/lang/String;[B[B[B[B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    .line 767
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMergeData mXmpJpegData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->mXmpJpegData:[B

    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {p1}, Lcom/android/camera/stereo/StereoDataGroup;->getPictureName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->saveFile([BLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
