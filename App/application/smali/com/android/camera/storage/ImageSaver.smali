.class public Lcom/android/camera/storage/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaver$MemoryManager;,
        Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;,
        Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;,
        Lcom/android/camera/storage/ImageSaver$SaveRequest;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHostState:I

.field private mImageSaverStatusListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/storage/ImageSaverStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCaptureIntent:Z

.field private mLastImageUri:Landroid/net/Uri;

.field private mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/storage/ImageSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldStop:Z

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaverStatusListener;Landroid/os/Handler;Z)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mImageSaverStatusListenerRef:Ljava/lang/ref/WeakReference;

    .line 73
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    .line 74
    iput-boolean p3, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 76
    new-instance p1, Lcom/android/camera/storage/ImageSaver$MemoryManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$1;)V

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->updatePreviewThumbnailUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->notifyNewMediaData(Landroid/net/Uri;IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->postHideThumbnailProgressing()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/storage/ImageSaver;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver;->mImageSaverStatusListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/storage/ImageSaver;Z)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->needThumbnail(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method private addImage(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)V
    .locals 2

    .line 154
    monitor-enter p0

    const/4 v0, 0x2

    .line 155
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    const-string p1, "ImageSaver"

    const-string v0, "addImage: host is being destroyed."

    .line 156
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit p0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$400(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-virtual {p1}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->getSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$500(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isLastImageForThumbnail()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 346
    :goto_0
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-interface {v2}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private needThumbnail(Z)Z
    .locals 0

    .line 281
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 286
    :try_start_0
    iget p1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-nez p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->isLastImageForThumbnail()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    .line 290
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyNewMediaData(Landroid/net/Uri;IZ)V
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    if-ne p2, v0, :cond_1

    .line 324
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    .line 327
    :cond_1
    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver;->mImageSaverStatusListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/storage/ImageSaverStatusListener;

    if-eqz p0, :cond_2

    .line 328
    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaverStatusListener;->onNewUriArrived(Landroid/net/Uri;IZ)V

    :cond_2
    return-void
.end method

.method private postHideThumbnailProgressing()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/storage/ImageSaver$1;

    invoke-direct {v2, p0}, Lcom/android/camera/storage/ImageSaver$1;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private postUpdateThumbnail(Lcom/android/camera/Thumbnail;)V
    .locals 2

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-eqz v0, :cond_0

    .line 297
    monitor-exit p0

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mImageSaverStatusListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/ImageSaverStatusListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 301
    invoke-interface {v0, p1, v1, v1}, Lcom/android/camera/storage/ImageSaverStatusListener;->updateThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 303
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

.method private updatePreviewThumbnailUri(Landroid/net/Uri;)V
    .locals 1

    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-eqz v0, :cond_0

    .line 310
    monitor-exit p0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mImageSaverStatusListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/ImageSaverStatusListener;

    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0, p1}, Lcom/android/camera/storage/ImageSaverStatusListener;->updatePreviewThumbnailUri(Landroid/net/Uri;)V

    .line 316
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


# virtual methods
.method public addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v18, p15

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 84
    invoke-virtual/range {v0 .. v18}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    return-void
.end method

.method public addImage(I[BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    const/4 v4, 0x0

    .line 91
    invoke-virtual/range {v0 .. v18}, Lcom/android/camera/storage/ImageSaver;->addImage(I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    return-void
.end method

.method public addImage(I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V
    .locals 21

    move-object/from16 v15, p0

    if-eqz p4, :cond_0

    if-nez p7, :cond_0

    .line 100
    iget-object v0, v15, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    .line 102
    :goto_0
    new-instance v14, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v20, v14

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v0 .. v19}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;I[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZLjava/lang/String;Lcom/android/camera/PictureInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    .line 104
    invoke-direct {v0, v1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)V

    return-void
.end method

.method public addVideo(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    .line 169
    monitor-enter p0

    const/4 v0, 0x2

    .line 170
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-ne v0, v1, :cond_0

    const-string p1, "ImageSaver"

    const-string p2, "addVideo: host is being destroyed."

    .line 171
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    new-instance v0, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/storage/ImageSaver$VideoSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 175
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBurstDelay()I
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$100(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I

    move-result p0

    return p0
.end method

.method public getSuitableBurstShotSpeed()F
    .locals 0

    const p0, 0x3f28f5c3    # 0.66f

    return p0
.end method

.method public isNeedSlowDown()Z
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$300(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result p0

    return p0
.end method

.method public isNeedStopCapture()Z
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$200(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result p0

    return p0
.end method

.method public onHostDestroy()V
    .locals 3

    .line 266
    monitor-enter p0

    const/4 v0, 0x2

    .line 267
    :try_start_0
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 270
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 272
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    iput-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    .line 276
    iput-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mImageSaverStatusListenerRef:Ljava/lang/ref/WeakReference;

    const-string p0, "ImageSaver"

    const-string v0, "onHostDestroy"

    .line 277
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 274
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 270
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onHostPause()V
    .locals 4

    .line 242
    monitor-enter p0

    const/4 v0, 0x1

    .line 243
    :try_start_0
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 244
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 252
    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver;->mImageSaverStatusListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/storage/ImageSaverStatusListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 254
    invoke-interface {p0, v3, v0, v0}, Lcom/android/camera/storage/ImageSaverStatusListener;->updateThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_0
    const-string p0, "ImageSaver"

    const-string v0, "onHostPause"

    .line 257
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 249
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 245
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onHostResume(Z)V
    .locals 2

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    const/4 p1, 0x0

    .line 230
    iput p1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const-string p1, "ImageSaver"

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHostResume: isCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mIsCaptureIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 3

    const/16 v0, -0x13

    .line 187
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$600(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    .line 191
    :goto_0
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageSaver"

    const-string v1, "run: exiting"

    .line 195
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 200
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    :catch_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    .line 207
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    invoke-interface {v0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->save()V

    .line 210
    monitor-enter p0

    .line 211
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-interface {v0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->getSize()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$700(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->access$400(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iput-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    .line 217
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 218
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 207
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public shouldStopShot()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    return p0
.end method

.method public updateImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 109
    new-instance v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    .line 110
    iput-object p1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->title:Ljava/lang/String;

    .line 111
    iput-object p2, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->oldTitle:Ljava/lang/String;

    .line 113
    iget-object p1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->oldTitle:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    iput-object p1, v0, Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;->uri:Landroid/net/Uri;

    .line 116
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$ImageSaveRequest;)V

    return-void
.end method
