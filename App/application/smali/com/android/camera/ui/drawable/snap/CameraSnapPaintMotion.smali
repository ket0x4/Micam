.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintMotion.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 28
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x28

    if-ge v1, v2, :cond_6

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 v2, v1, 0x9

    int-to-float v2, v2

    .line 37
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/16 v3, 0xc

    .line 40
    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 42
    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    const/16 v6, 0x13

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    cmpl-float v5, v2, v8

    if-nez v5, :cond_0

    .line 43
    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->needZero:Z

    if-eqz v5, :cond_0

    .line 44
    iget-object v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 45
    :cond_0
    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_2

    .line 46
    iget-object v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget-boolean v9, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v9, :cond_1

    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    goto :goto_1

    :cond_1
    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    :goto_1
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 48
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget-boolean v9, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    if-eqz v9, :cond_3

    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    goto :goto_2

    :cond_3
    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    :goto_2
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    rem-float/2addr v2, v7

    cmpl-float v2, v2, v8

    if-nez v2, :cond_5

    goto :goto_4

    :cond_4
    rem-float/2addr v2, v7

    cmpl-float v2, v2, v8

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move v6, v3

    .line 60
    :goto_4
    iget v10, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v9, v2, v0

    sub-float/2addr v2, v0

    int-to-float v3, v6

    add-float v11, v2, v3

    iget-object v12, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    iget-object v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-eqz v1, :cond_7

    .line 67
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 68
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 69
    iget-object v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    iget v7, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v6, v2, v0

    sub-float/2addr v2, v0

    const/high16 v0, 0x41980000    # 19.0f

    add-float v8, v2, v0

    iget-object v9, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_7
    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x40400000    # 3.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
