.class public abstract Lcom/android/camera/FocusManagerAbstract;
.super Ljava/lang/Object;
.source "FocusManagerAbstract.java"


# instance fields
.field protected final FOCUS_AREA_HEIGHT:I

.field protected final FOCUS_AREA_SCALE:F

.field protected final FOCUS_AREA_WIDTH:I

.field protected final METERING_AREA_SCALE:F

.field protected mCancelAutoFocusIfMove:Z

.field protected mDisplayOrientation:I

.field protected mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitialized:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mMirror:Z

.field protected mPreviewChangeMatrix:Landroid/graphics/Matrix;

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mRenderHeight:I

.field protected mRenderWidth:I

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    .line 53
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    .line 56
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    .line 58
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_SCALE:F

    const v0, 0x3fe66666    # 1.8f

    .line 60
    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->METERING_AREA_SCALE:F

    return-void
.end method


# virtual methods
.method protected calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 0

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 95
    div-int/lit8 p3, p1, 0x2

    sub-int/2addr p4, p3

    sub-int/2addr p6, p1

    const/4 p3, 0x0

    invoke-static {p4, p3, p6}, Lcom/android/camera/Util;->clamp(III)I

    move-result p4

    .line 96
    div-int/lit8 p6, p2, 0x2

    sub-int/2addr p5, p6

    sub-int/2addr p7, p2

    invoke-static {p5, p3, p7}, Lcom/android/camera/Util;->clamp(III)I

    move-result p3

    .line 97
    new-instance p5, Landroid/graphics/RectF;

    int-to-float p6, p4

    int-to-float p7, p3

    add-int/2addr p4, p1

    int-to-float p1, p4

    add-int/2addr p3, p2

    int-to-float p2, p3

    invoke-direct {p5, p6, p7, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    iget-object p0, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 99
    invoke-static {p5, p8}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    return-void
.end method

.method protected setMatrix()V
    .locals 8

    .line 65
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    iget-boolean v2, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v6, v1, 0x2

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v7, v1, 0x2

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 74
    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 75
    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 76
    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 77
    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    return-void
.end method

.method public setRenderSize(II)V
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    if-eq p2, v0, :cond_1

    .line 85
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    .line 86
    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    :cond_1
    return-void
.end method
