.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
.super Ljava/lang/Object;
.source "DrawJPEGAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .line 194
    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    return-void
.end method


# virtual methods
.method public algorithmName(Ljava/lang/String;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public applyDualCameraWaterMark(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-static {v0, p1}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->access$202(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    return-object p0
.end method

.method public applySquare(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-boolean p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsSquare:Z

    return-object p0
.end method

.method public applyTimeWaterMark(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-static {v0, p1}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->access$102(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    return-object p0
.end method

.method public applyWaterMark(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-static {v0, p1}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->access$002(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    return-object p0
.end method

.method public build()Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    return-object p0
.end method

.method public data([B)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    return-object p0
.end method

.method public date(J)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-wide p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    return-object p0
.end method

.method public effectIndex(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    return-object p0
.end method

.method public effectRectAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object p0
.end method

.method public jpegOrientation(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    return-object p0
.end method

.method public location(Landroid/location/Location;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    return-object p0
.end method

.method public mirror(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-boolean p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    return-object p0
.end method

.method public orientation(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    return-object p0
.end method

.method public pictureInfo(Lcom/android/camera/PictureInfo;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    return-object p0
.end method

.method public previewSize(II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    .line 204
    iput p2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    return-object p0
.end method

.method public shootRotation(F)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    return-object p0
.end method

.method public size(II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 210
    iput p2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    return-object p0
.end method
