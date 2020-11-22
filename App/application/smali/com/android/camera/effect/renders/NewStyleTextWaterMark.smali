.class public Lcom/android/camera/effect/renders/NewStyleTextWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "NewStyleTextWaterMark.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewStyleTextWaterMark"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCharMargin:I

.field private mHorizontalPadding:I

.field private mPaddingX:I

.field private mPaddingY:I

.field private mVerticalPadding:I

.field private mWaterHeight:I

.field private mWaterText:Ljava/lang/String;

.field private mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mWaterWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIFF)V
    .locals 1

    .line 28
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    .line 30
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x44870000    # 1080.0f

    div-float/2addr p2, p3

    .line 33
    iput-object p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    const p3, 0x41f0a2f9

    mul-float/2addr p3, p2

    const/4 p4, -0x1

    const/4 v0, 0x2

    invoke-static {p1, p3, p4, v0}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FII)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 38
    iget-object p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterWidth:I

    .line 39
    iget-object p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterHeight:I

    mul-float/2addr p5, p2

    .line 40
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mPaddingX:I

    mul-float/2addr p6, p2

    .line 41
    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mPaddingY:I

    .line 42
    iget p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterHeight:I

    int-to-float p1, p1

    const p2, 0x3e051eb8    # 0.13f

    mul-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCharMargin:I

    .line 44
    iget p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mPaddingX:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mHorizontalPadding:I

    .line 45
    iget p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mPaddingY:I

    iget p2, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCharMargin:I

    sub-int/2addr p1, p2

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mVerticalPadding:I

    .line 47
    invoke-direct {p0}, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->calcCenterAxis()V

    .line 48
    sget-boolean p1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->print()V

    :cond_0
    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    .line 54
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mVerticalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterX:I

    .line 69
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 64
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mHorizontalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterX:I

    .line 65
    iget v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mVerticalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 60
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mVerticalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterX:I

    .line 61
    iget v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mHorizontalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterY:I

    goto :goto_0

    .line 56
    :cond_3
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterX:I

    .line 57
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mVerticalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method

.method private print()V
    .locals 3

    .line 102
    sget-object v0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaterMark mPictureWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPictureHeight ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWaterText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCenterX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCenterY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWaterWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWaterHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPaddingX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mPaddingX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPaddingY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mPaddingY:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterHeight:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;->mWaterWidth:I

    return p0
.end method
