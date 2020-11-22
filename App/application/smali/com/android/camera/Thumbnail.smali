.class public Lcom/android/camera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;

.field private mWaitingForUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    .line 74
    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 75
    invoke-static {p2, p3, p4}, Lcom/android/camera/Thumbnail;->adjustImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static adjustImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "Failed to rotate thumbnail"

    const-string v1, "Thumbnail"

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    return-object p0

    .line 127
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    rem-int/lit16 v3, p1, 0xb4

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 140
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p1, p1

    .line 141
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p1, v3

    div-float/2addr p1, v6

    int-to-float v5, v4

    div-float/2addr v5, v6

    .line 142
    invoke-virtual {v2, p1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    move p2, v7

    .line 145
    :goto_1
    invoke-virtual {v2, p2, v7, p1, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 148
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int p2, p1, v3

    int-to-float p2, p2

    div-float/2addr p2, v6

    sub-int v3, p1, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 149
    invoke-virtual {v2, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 p2, 0x0

    .line 153
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 154
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 157
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 158
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 160
    invoke-virtual {p1, p0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 166
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 164
    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object p2
.end method

.method public static createBitmap([BIZI)Landroid/graphics/Bitmap;
    .locals 9

    .line 608
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 609
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p3, 0x1

    .line 610
    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 611
    array-length p3, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 613
    rem-int/lit16 p1, p1, 0x168

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 615
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 616
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    int-to-float p1, p1

    .line 618
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 619
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 618
    invoke-virtual {v7, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_1
    if-eqz p2, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    .line 622
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 623
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 622
    invoke-virtual {p3, p1, p2, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 624
    invoke-virtual {v7, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    .line 628
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_3

    .line 633
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Thumbnail"

    const-string p3, "Failed to rotate thumbnail"

    .line 637
    invoke-static {p2, p3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object p0
.end method

.method public static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "Thumbnail"

    const-string p1, "Failed to create thumbnail from null bitmap"

    .line 692
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 695
    :cond_0
    new-instance v0, Lcom/android/camera/Thumbnail;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    return-object v0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;
    .locals 2

    .line 490
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 491
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x1

    .line 492
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 493
    array-length p2, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 494
    invoke-static {p3, p0, p1, p4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method public static createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;
    .locals 16

    move-object/from16 v0, p1

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v0, :cond_9

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/images/media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v1, "_data"

    const-string v2, "_id"

    if-eqz v9, :cond_0

    const-string v3, "orientation"

    .line 503
    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 504
    :cond_0
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    .line 501
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 511
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 512
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 513
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_1

    const/4 v10, 0x2

    .line 514
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    move-wide v11, v2

    move v2, v5

    move v3, v10

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 519
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_2
    throw v0

    :cond_3
    move-wide v11, v2

    move v2, v4

    move v3, v2

    move-object v6, v8

    :goto_2
    if-eqz v1, :cond_4

    .line 519
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_9

    const/16 v1, 0x1c

    if-eqz v9, :cond_6

    .line 526
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v1, :cond_5

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move v13, v3

    move-object v14, v6

    .line 528
    invoke-static/range {v10 .. v15}, Lcom/android/camera/Thumbnail;->getMiniKindThumbnailByP(Landroid/content/Context;JILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 530
    :cond_5
    invoke-static {v7, v11, v12, v5, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_7

    .line 534
    invoke-static {v6, v5}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4

    .line 537
    :cond_6
    invoke-static {v7, v11, v12, v5, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_7

    .line 540
    invoke-static {v6, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 547
    :cond_7
    :goto_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v1, :cond_8

    move/from16 v1, p2

    move v3, v4

    goto :goto_5

    :cond_8
    move/from16 v1, p2

    .line 548
    :goto_5
    invoke-static {v0, v2, v3, v1}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v8
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 644
    invoke-static {v0, p0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 648
    invoke-static {p0, v0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 654
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    const-string v2, "Thumbnail"

    if-eqz p0, :cond_0

    .line 657
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_0
    const-wide/16 v3, -0x1

    .line 661
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 665
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception p1

    .line 663
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 668
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 670
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_1

    .line 674
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail to get thumbnail for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 679
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 680
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le p0, p2, :cond_2

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    mul-float/2addr p0, p2

    .line 683
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 684
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x1

    .line 685
    invoke-static {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    return-object p1

    .line 668
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 670
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    :goto_4
    throw p0
.end method

.method private static getImageBucketIds()Ljava/lang/String;
    .locals 2

    .line 353
    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 24

    .line 384
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 386
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v1, "_id"

    const-string v2, "orientation"

    const-string v4, "datetaken"

    const-string v5, "_data"

    .line 387
    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mime_type=\'image/jpeg\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {}, Lcom/android/camera/Thumbnail;->getImageBucketIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "datetaken DESC,_id DESC"

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object v4, v8

    move-object v5, v9

    move-object v7, v10

    .line 396
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, 0x2

    const-string v13, "Thumbnail"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v6, 0x3

    if-eqz v7, :cond_2

    .line 397
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    .line 399
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 401
    new-instance v3, Lcom/android/camera/Thumbnail$Media;

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 402
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v3

    move-wide/from16 v17, v1

    invoke-direct/range {v16 .. v23}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    .line 426
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v3

    :cond_1
    :try_start_2
    const-string v1, "getLastImageThumbnail first file is deleted"

    .line 405
    invoke-static {v13, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v14

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v11

    goto/16 :goto_1

    :cond_2
    move v1, v15

    :goto_0
    if-eqz v1, :cond_6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move v8, v6

    move-object v6, v10

    .line 411
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_7

    .line 413
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastImageThumbnail count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 415
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    .line 416
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 417
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 418
    new-instance v4, Lcom/android/camera/Thumbnail$Media;

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 419
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v4

    move-wide/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_4

    .line 426
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 429
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v4

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_6
    move-object v1, v11

    :cond_7
    if-eqz v7, :cond_8

    .line 426
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_9

    .line 429
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v11

    :catchall_2
    move-exception v0

    move-object v1, v11

    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_a

    .line 426
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v1, :cond_b

    .line 429
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method public static getLastThumbnailFromContentResolver(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I
    .locals 16

    move-object/from16 v0, p2

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lcom/android/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v2

    .line 277
    invoke-static {v1}, Lcom/android/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    return v4

    :cond_0
    const-string v5, "Thumbnail"

    const/16 v6, 0x1c

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    if-eqz v3, :cond_1

    .line 284
    iget-wide v10, v2, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v12, v3, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_5

    :cond_1
    if-eqz v0, :cond_2

    .line 285
    iget-object v3, v2, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v7

    .line 288
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_3

    .line 290
    iget-wide v11, v2, Lcom/android/camera/Thumbnail$Media;->id:J

    iget v13, v2, Lcom/android/camera/Thumbnail$Media;->orientation:I

    iget-object v14, v2, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v15}, Lcom/android/camera/Thumbnail;->getMiniKindThumbnailByP(Landroid/content/Context;JILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_3
    iget-wide v10, v2, Lcom/android/camera/Thumbnail$Media;->id:J

    invoke-static {v1, v10, v11, v9, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v3, v0

    if-nez v3, :cond_4

    .line 299
    :try_start_0
    iget-object v0, v2, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v7, "exception in createImageThumbnail"

    .line 301
    invoke-static {v5, v7, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    move-object v0, v3

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 306
    iget-object v2, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v7

    .line 309
    :cond_6
    iget-wide v10, v3, Lcom/android/camera/Thumbnail$Media;->id:J

    invoke-static {v1, v10, v11, v9, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_7

    .line 314
    :try_start_1
    iget-object v0, v3, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v7, "exception in createVideoThumbnail"

    .line 316
    invoke-static {v5, v7, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    move-object v0, v2

    :goto_2
    move-object v2, v3

    :goto_3
    if-eqz v0, :cond_9

    .line 324
    iget-object v3, v2, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 329
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v6, :cond_8

    move v1, v4

    goto :goto_4

    :cond_8
    iget v1, v2, Lcom/android/camera/Thumbnail$Media;->orientation:I

    .line 330
    :goto_4
    iget-object v2, v2, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v2, v0, v1, v4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v0

    aput-object v0, p1, v4

    return v9

    :cond_9
    const/4 v0, 0x2

    return v0
.end method

.method public static getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;
    .locals 7

    .line 236
    new-instance v0, Ljava/io/File;

    const-string v1, "last_thumb"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    sget-object p0, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, 0x0

    .line 244
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 245
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1000

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 248
    invoke-static {v4, p1}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 249
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 258
    :try_start_4
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 259
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object v1

    .line 252
    :cond_0
    :try_start_5
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 253
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 258
    :try_start_6
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 259
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 262
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 p0, 0x0

    .line 263
    invoke-static {v4, p1, p0, p0}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/camera/Thumbnail;->setFromFile(Z)V

    :cond_1
    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v3, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, v1

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v0, v1

    move-object v3, v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    goto :goto_1

    :catch_3
    move-exception p1

    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    :goto_0
    :try_start_7
    const-string v4, "Thumbnail"

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to load bitmap. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 258
    :try_start_8
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 259
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit p0

    return-object v1

    :catchall_3
    move-exception p1

    .line 258
    :goto_1
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 259
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    :catchall_4
    move-exception p1

    .line 262
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1
.end method

.method public static getLastThumbnailFromUriList(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/android/camera/Thumbnail;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 700
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 702
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 703
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 704
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_1

    .line 705
    invoke-virtual {p3, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, -0x1

    return p0

    .line 708
    :cond_1
    invoke-static {p0, v3, v0}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object p0

    aput-object p0, p1, v0

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static getLastThumbnailUri(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 5

    .line 371
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v0

    .line 372
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 374
    iget-wide v1, v0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v3, p0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 375
    :cond_0
    iget-object p0, v0, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    return-object p0

    :cond_1
    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    .line 376
    iget-wide v1, p0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v3, v0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_3

    .line 377
    :cond_2
    iget-object p0, p0, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 24

    .line 436
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 438
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v4, "datetaken"

    .line 439
    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v8

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Thumbnail;->getVideoBucketIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "datetaken DESC,_id DESC"

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object v4, v8

    move-object v5, v9

    move-object v7, v10

    .line 448
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, 0x2

    const-string v13, "Thumbnail"

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v7, :cond_2

    .line 449
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 451
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    .line 452
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    new-instance v3, Lcom/android/camera/Thumbnail$Media;

    const/16 v19, 0x0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 454
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v3

    move-wide/from16 v17, v1

    invoke-direct/range {v16 .. v23}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v3

    :cond_1
    :try_start_2
    const-string v1, "getLastVideoThumbnail first file is deleted"

    .line 457
    invoke-static {v13, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v15

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v11

    goto/16 :goto_1

    :cond_2
    move v1, v14

    :goto_0
    if-eqz v1, :cond_6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v6, v10

    .line 463
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_7

    .line 465
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastVideoThumbnail count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 467
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    .line 468
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 470
    new-instance v4, Lcom/android/camera/Thumbnail$Media;

    const/16 v19, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 471
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v4

    move-wide/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_4

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 481
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v4

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_6
    move-object v1, v11

    :cond_7
    if-eqz v7, :cond_8

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_9

    .line 481
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v11

    :catchall_2
    move-exception v0

    move-object v1, v11

    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_a

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v1, :cond_b

    .line 481
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method private static getMiniKindThumbnailByP(Landroid/content/Context;JILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "; "

    const-string v1, "Thumbnail"

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v2, 0x0

    .line 557
    invoke-static {p0, v2, p4}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p4, 0x0

    .line 561
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "blocking"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "orig_id"

    .line 562
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "group_id"

    const-wide/16 v4, 0x0

    .line 563
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    .line 564
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p4

    .line 572
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 575
    :try_start_2
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string p1, "r"

    .line 576
    invoke-virtual {v8, p0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 577
    invoke-static {p2, p4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 579
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p0, p4

    .line 583
    :goto_0
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "failed to allocate memory for thumbnail "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception p1

    move-object p0, p4

    .line 581
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "couldn\'t open thumbnail "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, p4

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_4
    move-exception p0

    move-object p1, p4

    move-object p4, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, p4

    goto :goto_5

    :catch_5
    move-exception p0

    move-object p1, p4

    .line 587
    :goto_3
    :try_start_5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p4, :cond_4

    .line 590
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, p1

    :goto_4
    if-eqz p3, :cond_5

    if-eqz v2, :cond_5

    .line 596
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 597
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 599
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p3

    .line 600
    div-int/lit8 p1, v5, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, v6, 0x2

    int-to-float p2, p2

    invoke-virtual {v7, p0, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 601
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    return-object v2

    :goto_5
    if-eqz v2, :cond_6

    .line 590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method private static getVideoBucketIds()Ljava/lang/String;
    .locals 2

    .line 362
    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fromFile()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isWaitingForUri()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    return p0
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;)V
    .locals 7

    .line 207
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string p0, "Thumbnail"

    const-string p1, "Fail to store bitmap. uri is null"

    .line 208
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "last_thumb"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    sget-object p1, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x0

    .line 217
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 218
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 219
    :try_start_2
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p0, v1, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 222
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    :try_start_4
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 228
    :goto_0
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, v1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v4, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_1
    move-object v1, v2

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v3, v1

    move-object v4, v3

    :goto_3
    :try_start_5
    const-string v2, "Thumbnail"

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to store bitmap. path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 226
    :try_start_6
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 230
    :goto_4
    monitor-exit p1

    return-void

    :catchall_4
    move-exception p0

    .line 226
    :goto_5
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catchall_5
    move-exception p0

    .line 230
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw p0
.end method

.method public setFromFile(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string p0, "Thumbnail"

    const-string p1, "the uri for thumbnail is being updated unexpectedly..ignore."

    .line 99
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    return-void
.end method

.method public startWaitingForUri()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mWaitingForUri:Z

    return-void
.end method
