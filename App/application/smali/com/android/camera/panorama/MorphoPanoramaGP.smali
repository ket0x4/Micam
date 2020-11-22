.class public Lcom/android/camera/panorama/MorphoPanoramaGP;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MorphoPanoramaGP"


# instance fields
.field private mNative:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "morpho_panorama"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/android/camera/panorama/MorphoPanoramaGP;->TAG:Ljava/lang/String;

    const-string v1, "loadLibrary done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    sget-object v1, Lcom/android/camera/panorama/MorphoPanoramaGP;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t loadLibrary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    .line 137
    invoke-direct {p0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->createNativeObject()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 140
    iput-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    goto :goto_0

    .line 142
    :cond_0
    iput-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    :goto_0
    return-void
.end method

.method public static calcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I
    .locals 0

    .line 123
    invoke-static {p0, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeCalcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I

    move-result p0

    return p0
.end method

.method private final native createNativeObject()J
.end method

.method private final native deleteNativeObject(J)V
.end method

.method private static getFD(Ljava/io/FileDescriptor;)I
    .locals 2

    .line 571
    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 573
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private final native nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeAttachStillImageExt(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private final native nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeCalcImageSize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;D)I
.end method

.method private final native nativeEnd(J)I
.end method

.method private final native nativeFinish(J)I
.end method

.method private final native nativeGetBoundingRect(J[I)I
.end method

.method private final native nativeGetClippingRect(J[I)I
.end method

.method private final native nativeGetCurrentDirection(J[I)I
.end method

.method private final native nativeGetGuidancePos(J[I)I
.end method

.method private final native nativeGetMoveSpeed(J[I)I
.end method

.method private final native nativeInitialize(JLcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I
.end method

.method private final native nativeSaveOutputJpeg(JLjava/lang/String;IIIIII[I)I
.end method

.method private final native nativeSetJpegForCopyingExif(JLjava/nio/ByteBuffer;)I
.end method

.method private final native nativeSetMotionlessThreshold(JI)I
.end method

.method private final native nativeSetUseSensorAssist(JII)I
.end method

.method private final native nativeSetUseSensorThreshold(JI)I
.end method

.method private final native nativeStart(J)I
.end method


# virtual methods
.method public attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I
    .locals 9

    .line 200
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 202
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachPreview(J[BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 264
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 266
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetJpegForCopyingExif(JLjava/nio/ByteBuffer;)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 6

    .line 232
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachStillImageExt(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 6

    .line 248
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 250
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeAttachStillImageRaw(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public end()I
    .locals 4

    .line 280
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 282
    invoke-direct {p0, v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeEnd(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public finish()I
    .locals 6

    .line 166
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeFinish(J)I

    move-result v0

    .line 169
    iget-wide v4, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    invoke-direct {p0, v4, v5}, Lcom/android/camera/panorama/MorphoPanoramaGP;->deleteNativeObject(J)V

    .line 170
    iput-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    goto :goto_0

    :cond_0
    const v0, -0x7ffffffe

    :goto_0
    return v0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 297
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 299
    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetBoundingRect(J[I)I

    move-result p0

    if-nez p0, :cond_1

    .line 302
    aget v1, v0, v4

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 315
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return p0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 326
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 328
    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetClippingRect(J[I)I

    move-result p0

    if-nez p0, :cond_1

    .line 331
    aget v1, v0, v4

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 344
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return p0
.end method

.method public getCurrentDirection([I)I
    .locals 4

    .line 435
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 437
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetCurrentDirection(J[I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 500
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 502
    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetGuidancePos(J[I)I

    move-result p0

    const/4 v1, 0x0

    .line 503
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    const/4 p1, 0x2

    .line 504
    aget p1, v0, p1

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public getMoveSpeed([I)I
    .locals 4

    .line 402
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 404
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeGetMoveSpeed(J[I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public initialize(Lcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I
    .locals 4

    .line 150
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 152
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeInitialize(JLcom/android/camera/panorama/MorphoPanoramaGP$InitParam;[I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public saveOutputJpeg(Ljava/io/FileDescriptor;Landroid/graphics/Rect;I[I)I
    .locals 11

    .line 554
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 555
    invoke-static {p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->getFD(Ljava/io/FileDescriptor;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 557
    iget-wide v2, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const/4 v5, 0x0

    iget v6, p2, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-wide v1, v2

    move-object v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSaveOutputJpeg(JLjava/lang/String;IIIIII[I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, -0x7ffffff0

    goto :goto_0

    :cond_1
    const v0, -0x7ffffffe

    :goto_0
    return v0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[I)I
    .locals 11

    .line 539
    iget-wide v1, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 541
    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSaveOutputJpeg(JLjava/lang/String;IIIIII[I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setMotionlessThreshold(I)I
    .locals 4

    .line 386
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 388
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetMotionlessThreshold(JI)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setUseSensorAssist(II)I
    .locals 4

    .line 451
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 453
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetUseSensorAssist(JII)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setUseSensorThreshold(I)I
    .locals 4

    .line 483
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 485
    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeSetUseSensorThreshold(JI)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public start()I
    .locals 4

    .line 184
    iget-wide v0, p0, Lcom/android/camera/panorama/MorphoPanoramaGP;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 186
    invoke-direct {p0, v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP;->nativeStart(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method
