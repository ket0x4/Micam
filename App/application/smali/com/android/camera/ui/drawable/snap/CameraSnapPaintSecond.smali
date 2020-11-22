.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintSecond.java"


# instance fields
.field private mNeedSpacing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 33
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-ge v2, v3, :cond_6

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 v4, v2, 0x4

    int-to-float v4, v4

    .line 42
    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 44
    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 45
    iget-boolean v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    .line 46
    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->needZero:Z

    if-eqz v5, :cond_0

    .line 47
    iget-object v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    goto :goto_1

    .line 49
    :cond_0
    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 50
    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    goto :goto_1

    .line 52
    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v4, :cond_3

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    goto :goto_1

    :cond_3
    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    goto :goto_1

    :cond_4
    move v4, v5

    .line 57
    :goto_1
    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mNeedSpacing:Z

    if-eqz v5, :cond_5

    const/16 v5, 0x43

    if-le v2, v5, :cond_5

    if-ge v2, v3, :cond_5

    .line 58
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_5

    move v4, v1

    .line 63
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    iget v8, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v7, v3, v0

    sub-float/2addr v3, v0

    const/high16 v4, 0x41700000    # 15.0f

    add-float v9, v3, v4

    iget-object v10, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x40400000    # 3.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setNeedSpacing(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mNeedSpacing:Z

    return-void
.end method
