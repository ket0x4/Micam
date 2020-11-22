.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintEvAdjust.java"


# static fields
.field private static final MARGIN:I

.field private static final TRIANGLE_BASE_DIS:I

.field private static final TRIANGLE_BASE_HEIGHT:I

.field private static final TRIANGLE_BASE_LEN:I

.field private static final TRIANGLE_MIN_MARGIN:I


# instance fields
.field private mCurrentDistanceY:F

.field private mCurrentOffsetY:F

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mEvValue:F

.field private mLineColor:I

.field private mLineHeight:I

.field private mLineMargin:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:I

.field private mRotation:I

.field private mRtl:Z

.field private mShowLine:Z

.field private mStartOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41c80000    # 25.0f

    .line 23
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 24
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 25
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    const/high16 v0, 0x40400000    # 3.0f

    .line 26
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_DIS:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 27
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 29
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 58
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineWidth:I

    .line 59
    sget p1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 60
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    return-void
.end method

.method private isNearlyOutOfEdge()Z
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 190
    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRotation:I

    div-int/lit8 v3, v2, 0x5a

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    .line 191
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    if-eqz v1, :cond_1

    .line 192
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    int-to-float v0, v0

    .line 194
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    return v4

    :cond_3
    const/16 v0, 0x5a

    if-ne v2, v0, :cond_5

    int-to-float v0, v1

    .line 198
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    sget p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    return v4

    :cond_5
    const/16 v0, 0x10e

    if-ne v2, v0, :cond_7

    .line 200
    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v0, v0

    sub-float/2addr p0, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_MIN_MARGIN:I

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    return v4

    :cond_7
    return v5
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 111
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 112
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->isNearlyOutOfEdge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 115
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v2, v2, 0x2

    :goto_0
    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 120
    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    add-float/2addr v2, v3

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_DIS:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v1

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 134
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 138
    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v6, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v7, v5, v6

    .line 142
    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    const/16 v11, 0xcc

    if-eqz v5, :cond_1

    .line 143
    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v6, v5

    sub-float v6, v2, v6

    sub-float/2addr v6, v7

    iget v8, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v9, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_1

    int-to-float v5, v5

    sub-float/2addr v2, v5

    int-to-float v5, v8

    sub-float v9, v2, v5

    .line 145
    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    iget-object v10, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v4

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 155
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    add-float/2addr v2, v5

    iget v5, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    add-float/2addr v2, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_DIS:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v1

    sget v6, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 172
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    if-eqz v0, :cond_2

    .line 173
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 174
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v1, v0

    sub-float v1, v9, v1

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->TRIANGLE_BASE_HEIGHT:I

    int-to-float v6, v5

    add-float/2addr v6, v2

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    int-to-float v1, v5

    add-float/2addr v2, v1

    int-to-float v0, v0

    add-float v7, v2, v0

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object v10, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v4

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getEvValue()F
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    return p0
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    .line 69
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    const/16 v0, 0x66

    invoke-static {v0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDistanceY(F)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    return-void
.end method

.method public setEvValue(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineColor:I

    .line 101
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRotation:I

    return-void
.end method

.method public setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    .line 84
    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setShowLine(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    return-void
.end method

.method public setStartOffsetY(F)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    return-void
.end method

.method public updateValue(F)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 78
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    return-void
.end method
