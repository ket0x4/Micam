.class Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;
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
    name = "VideoSaveRequest"
.end annotation


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field private mVideoPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 537
    iput-object p3, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method private addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    const-string p0, "Current video URI: "

    .line 606
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ImageSaver"

    if-nez v0, :cond_0

    const-string v0, "addVideoToMediaStore: is not UseDocumentMode"

    .line 607
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-static {p1}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_2

    .line 612
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->getDocumentFileForPath(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 615
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v4, "rw"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 617
    invoke-static {p1, v0}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 619
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto/16 :goto_5

    :catch_0
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v3, v1

    :goto_1
    :try_start_2
    const-string v4, "getDuration occurs exception : "

    .line 622
    invoke-static {v2, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 624
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const-wide/16 v3, 0x0

    .line 628
    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v5, "_size"

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVideoToMediaStore: set duration "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "duration"

    .line 632
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 639
    :try_start_4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 640
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, p1}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_5
    const-string p2, "failed to add video to media store"

    .line 644
    invoke-static {v2, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :catch_3
    move-exception p0

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse duration failed, videoPath:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catchall_3
    move-exception p0

    move-object v1, v3

    .line 624
    :goto_5
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public getSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public save()V
    .locals 9

    .line 542
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v2

    const-string v3, "ImageSaver"

    if-nez v2, :cond_1

    .line 544
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    goto :goto_1

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/storage/Storage;->getDocumentFileForPath(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 553
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 555
    invoke-virtual {v2, v4}, Landroid/support/v4/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "documentFile.renameTo end<< cost time= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    :cond_2
    iget-object v4, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/android/camera/FileCompat;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 560
    :goto_0
    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/camera/storage/Storage;->putDocumentFile(Ljava/lang/String;Landroid/support/v4/provider/DocumentFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 563
    :catch_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_7

    .line 576
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->isFinal()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/storage/ImageSaver;->access$800(Lcom/android/camera/storage/ImageSaver;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 578
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    const/16 v3, 0x200

    invoke-static {v1, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 580
    invoke-static {v0, v1, v2, v2}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    .line 581
    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v3, v1}, Lcom/android/camera/storage/ImageSaver;->access$900(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V

    goto :goto_2

    .line 583
    :cond_4
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v1}, Lcom/android/camera/storage/ImageSaver;->access$1200(Lcom/android/camera/storage/ImageSaver;)V

    .line 587
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    const/16 v3, 0x101

    invoke-static {v1, v0, v3, v2}, Lcom/android/camera/storage/ImageSaver;->access$1100(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;IZ)V

    .line 588
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v4, "latitude"

    .line 589
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v3, "longitude"

    .line 590
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6

    const/4 v2, 0x1

    .line 588
    :cond_6
    invoke-static {v0, v1, v2}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method
