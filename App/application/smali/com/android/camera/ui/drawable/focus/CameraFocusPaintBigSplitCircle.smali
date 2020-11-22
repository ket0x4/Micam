.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintBigSplitCircle.java"


# instance fields
.field private mDownPaint:Landroid/graphics/Paint;

.field private mUpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 41
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    sub-float v3, v1, v2

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v5, v4, v2

    sub-float/2addr v5, v0

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    sub-float/2addr v4, v0

    invoke-virtual {p1, v3, v5, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 43
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 49
    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    sub-float v4, v2, v3

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    add-float/2addr v0, v5

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    add-float/2addr v5, v3

    add-float/2addr v5, v1

    invoke-virtual {p1, v4, v0, v2, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 51
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 3

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mUpPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    .line 29
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;->mDownPaint:Landroid/graphics/Paint;

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->BASE_COLOR:I

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
