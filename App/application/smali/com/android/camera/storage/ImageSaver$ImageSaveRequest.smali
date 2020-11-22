.class Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Lcom/android/camera/storage/ImageSaver$SaveRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaveRequest"
.end annotation


# instance fields
.field public algorithmName:Ljava/lang/String;

.field public data:[B

.field public date:J

.field public exif:Lcom/android/gallery3d/exif/ExifInterface;

.field public finalImage:Z

.field public height:I

.field public info:Lcom/android/camera/PictureInfo;

.field public isHide:Z

.field public isMap:Z

.field public isParallelProcess:Z

.field public loc:Landroid/location/Location;

.field public oldTitle:Ljava/lang/String;

.field public orientation:I

.field public saveType:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V
    .locals 4

    move-object v0, p0

    move-object v1, p9

    move-object v2, p1

    .line 478
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p2

    .line 479
    iput v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->saveType:I

    move-object v2, p3

    .line 480
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    move-wide v2, p6

    .line 481
    iput-wide v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->date:J

    move-object v2, p8

    .line 482
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    move-object v2, p4

    .line 483
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->title:Ljava/lang/String;

    move-object v2, p5

    .line 484
    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->oldTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 485
    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p9}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->loc:Landroid/location/Location;

    move v1, p10

    .line 486
    iput v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->width:I

    move v1, p11

    .line 487
    iput v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->height:I

    move-object/from16 v1, p12

    .line 488
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move/from16 v1, p13

    .line 489
    iput v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->orientation:I

    move/from16 v1, p14

    .line 490
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isHide:Z

    move/from16 v1, p15

    .line 491
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isMap:Z

    move/from16 v1, p16

    .line 492
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->finalImage:Z

    move/from16 v1, p17

    .line 493
    iput-boolean v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isParallelProcess:Z

    move-object/from16 v1, p18

    .line 494
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->algorithmName:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 495
    iput-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->info:Lcom/android/camera/PictureInfo;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFinal()Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->finalImage:Z

    return p0
.end method

.method public save()V
    .locals 18

    move-object/from16 v0, p0

    .line 389
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 390
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->title:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->loc:Landroid/location/Location;

    iget v8, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->orientation:I

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->width:I

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->height:I

    iget-object v11, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->oldTitle:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    if-eqz v1, :cond_1

    .line 393
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->title:Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->date:J

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->loc:Landroid/location/Location;

    iget v7, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->orientation:I

    iget-object v8, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->width:I

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->height:I

    const/4 v11, 0x0

    iget-boolean v12, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isHide:Z

    iget-boolean v13, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isMap:Z

    iget-boolean v15, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isParallelProcess:Z

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->algorithmName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->info:Lcom/android/camera/PictureInfo;

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v2 .. v17}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    .line 399
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    .line 401
    iget v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->saveType:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 410
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isFinal()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/storage/ImageSaver;->access$800(Lcom/android/camera/storage/ImageSaver;Z)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 413
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needThumbnail:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraModule"

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 418
    iget v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->width:I

    int-to-double v1, v1

    iget v4, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->height:I

    int-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 420
    iget-boolean v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isMap:Z

    if-eqz v2, :cond_3

    .line 421
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    goto :goto_2

    .line 422
    :cond_3
    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->data:[B

    iget v4, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->orientation:I

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    invoke-static {v2, v4, v1, v5, v3}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    .line 423
    :goto_2
    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2, v1}, Lcom/android/camera/storage/ImageSaver;->access$900(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V

    goto :goto_3

    .line 425
    :cond_4
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v1, v2}, Lcom/android/camera/storage/ImageSaver;->access$1000(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;)V

    .line 428
    :goto_3
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    const/16 v3, 0x100

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->isFinal()Z

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/camera/storage/ImageSaver;->access$1100(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;IZ)V

    goto :goto_5

    :cond_5
    if-eqz v1, :cond_6

    .line 432
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v1}, Lcom/android/camera/storage/ImageSaver;->access$1200(Lcom/android/camera/storage/ImageSaver;)V

    goto :goto_4

    .line 434
    :cond_6
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/storage/ImageSaver;->access$1000(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;)V

    .line 437
    :goto_4
    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver;->access$1300(Lcom/android/camera/storage/ImageSaver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/ImageSaverStatusListener;

    if-eqz v0, :cond_7

    .line 439
    invoke-interface {v0}, Lcom/android/camera/storage/ImageSaverStatusListener;->notifySaveFailure()V

    :cond_7
    :goto_5
    return-void
.end method
