.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintCircle.java"


# instance fields
.field private arcRectF:Landroid/graphics/RectF;

.field private beautyColor:I

.field public isInBeautyMode:Z

.field private needRing:Z

.field private noNeedArc:Z

.field private ringWidth:F

.field private spaceAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const p1, -0x3967c

    .line 19
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->beautyColor:I

    const/high16 p1, 0x40400000    # 3.0f

    .line 20
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->needRing:Z

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 73
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->noNeedArc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-eqz v0, :cond_7

    .line 78
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    .line 79
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    .line 80
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v1, v0

    add-float/2addr v3, v0

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isInBeautyMode:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    goto :goto_0

    :cond_1
    sget v5, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    :goto_0
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->arcRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    iget-object v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->arcRectF:Landroid/graphics/RectF;

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    add-float v7, v0, v3

    .line 91
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    const/high16 v3, 0x43b40000    # 360.0f

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    sub-float v0, v3, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    :goto_2
    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v4, v11

    sub-float v8, v0, v4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    .line 89
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isInBeautyMode:Z

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->beautyColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    :cond_4
    iget-object v6, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->arcRectF:Landroid/graphics/RectF;

    .line 101
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    :goto_3
    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    add-float v7, v0, v2

    .line 102
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    sub-float v0, v3, v0

    :goto_4
    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    mul-float/2addr v2, v11

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    .line 100
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 106
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 117
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->needRing:Z

    if-eqz v0, :cond_8

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->ringWidth:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5

    .line 122
    :cond_8
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_5
    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->arcRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    return-void
.end method

.method public setNeedSplit(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->noNeedArc:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->spaceAngle:F

    return-void
.end method

.method public setRingVisible(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->needRing:Z

    return-void
.end method

.method public updateValue(F)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 59
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->ringWidth:F

    return-void
.end method
