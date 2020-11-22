.class public Lcom/android/camera/effect/renders/ImageWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "ImageWaterMark.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mPaddingX:I

.field private mPaddingY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIIFFF)V
    .locals 0

    .line 19
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x44870000    # 1080.0f

    div-float/2addr p2, p3

    mul-float/2addr p5, p2

    .line 23
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p3

    and-int/lit8 p3, p3, -0x2

    iput p3, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mHeight:I

    .line 24
    iget p3, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    mul-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    div-int/2addr p3, p4

    and-int/lit8 p3, p3, -0x2

    iput p3, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mWidth:I

    mul-float/2addr p6, p2

    .line 25
    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p3

    and-int/lit8 p3, p3, -0x2

    iput p3, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    mul-float/2addr p7, p2

    .line 26
    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit8 p2, p2, -0x2

    iput p2, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    .line 28
    new-instance p2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 29
    iget-object p1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    .line 30
    invoke-direct {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->calcCenterAxis()V

    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    .line 34
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    .line 49
    iget v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 44
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    .line 45
    iget v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 40
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    .line 41
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 36
    :cond_3
    iget v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    .line 37
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mHeight:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mWidth:I

    return p0
.end method
