.class public abstract Lcom/android/camera/effect/renders/WaterMark;
.super Ljava/lang/Object;
.source "WaterMark.java"


# instance fields
.field protected mOrientation:I

.field protected mPictureHeight:I

.field protected mPictureWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    .line 12
    iput p2, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    .line 13
    iput p3, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    return-void
.end method


# virtual methods
.method public abstract getCenterX()I
.end method

.method public abstract getCenterY()I
.end method

.method public abstract getHeight()I
.end method

.method public getLeft()I
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public abstract getTexture()Lcom/android/gallery3d/ui/BasicTexture;
.end method

.method public getTop()I
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public abstract getWidth()I
.end method
