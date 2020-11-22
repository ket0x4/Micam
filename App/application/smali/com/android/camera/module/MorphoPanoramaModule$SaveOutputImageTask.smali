.class Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mSaveImage:Z

.field saveType:I

.field start_time:J

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/content/Context;Z)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1461
    iput-boolean p3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->mSaveImage:Z

    const/16 p1, 0x9

    .line 1462
    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->saveType:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7

    .line 1467
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doInBackground start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2100(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 1472
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->end()I

    move-result p1

    .line 1473
    iget-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->mSaveImage:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 1475
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "%s:end() -> 0x%x"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1481
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2200()I

    move-result v3

    and-int/2addr v3, v2

    if-lez v3, :cond_2

    .line 1482
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1483
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getBoundingRect(Landroid/graphics/Rect;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1485
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v3, "getBoundingRect() -> 0x%x"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$900(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2300(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;

    move-result-object v3

    .line 1488
    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v4, v3, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2400(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 1492
    :cond_2
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2200()I

    move-result v3

    and-int/2addr v3, v1

    if-lez v3, :cond_4

    .line 1493
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1494
    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v3}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1496
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "getClippingRect() -> 0x%x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$900(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2300(Lcom/android/camera/module/MorphoPanoramaModule;JI)Ljava/lang/String;

    move-result-object v0

    .line 1499
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p0, v0, p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2400(Lcom/android/camera/module/MorphoPanoramaModule;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 1503
    :cond_4
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "doInBackground end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1454
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7

    .line 1520
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1200(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->finish()I

    .line 1521
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1202(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/panorama/MorphoPanoramaGP;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    .line 1522
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PanoramaFinish done"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1524
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$602(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z

    .line 1525
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    return-void

    .line 1528
    :cond_0
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SaveOutputImageTask onPostExecute"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xb0

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz p1, :cond_1

    .line 1533
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    .line 1535
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2500(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1536
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2500(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1538
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1539
    invoke-static {p1, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$700(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    .line 1540
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    .line 1542
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_6

    .line 1543
    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2600(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1544
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-boolean v0, p1, Lcom/android/camera/module/MorphoPanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1545
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2700(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1546
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1547
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2800(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 1548
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {p1, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1550
    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$602(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z

    .line 1551
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 1552
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2900(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 1553
    iget-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p1, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2902(Lcom/android/camera/module/MorphoPanoramaModule;I)I

    .line 1555
    :cond_7
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 1556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->start_time:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "[MORTIME] PanoramaFinish time = %d"

    .line 1555
    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1454
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SaveOutputImageTask;->start_time:J

    .line 1513
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    const/4 v0, 0x0

    .line 1514
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    return-void
.end method
