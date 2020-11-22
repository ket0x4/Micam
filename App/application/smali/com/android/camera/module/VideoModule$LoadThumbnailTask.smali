.class Lcom/android/camera/module/VideoModule$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mThumbnail:Lcom/android/camera/Thumbnail;

.field mUri:Landroid/net/Uri;

.field mVideoPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 1

    .line 1435
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1436
    iget-object v0, p1, Lcom/android/camera/module/VideoBase;->mCurrentVideoUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    .line 1437
    iget-object p1, p1, Lcom/android/camera/module/VideoBase;->mCurrentVideoFilename:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mVideoPath:Ljava/lang/String;

    return-void
.end method

.method private updateThumbnail()V
    .locals 3

    .line 1478
    invoke-static {}, Lcom/android/camera/module/VideoModule;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadThumbnailTask updateThumbnail thumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " paused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v2, v2, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1482
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1486
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1487
    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    goto :goto_2

    .line 1483
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    iget-object p0, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1430
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 1450
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1451
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mVideoPath:Ljava/lang/String;

    const/16 v1, 0x200

    invoke-static {p1, v1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1453
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v2}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->mThumbnail:Lcom/android/camera/Thumbnail;

    :cond_1
    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .line 1473
    invoke-static {}, Lcom/android/camera/module/VideoModule;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadThumbnailTask cancelled"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->updateThumbnail()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1430
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 1465
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean p1, p1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1468
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->updateThumbnail()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1442
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1444
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    const/4 v0, 0x0

    .line 1445
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    return-void
.end method
