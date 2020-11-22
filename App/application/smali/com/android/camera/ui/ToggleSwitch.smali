.class public Lcom/android/camera/ui/ToggleSwitch;
.super Landroid/widget/CompoundButton;
.source "ToggleSwitch.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;,
        Lcom/android/camera/ui/ToggleSwitch$State;
    }
.end annotation


# instance fields
.field private isMoving:Z

.field private mAnimDuration:I

.field private mBroadcasting:Z

.field private mChecked:Z

.field private mCurrentPos:F

.field private mOnCheckedChangeListener:Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;

.field private mStrokeWidth:I

.field private mSwitchBackgroundColor:I

.field private mSwitchBackgroundStrokeColor:I

.field private mTextOff:Ljava/lang/String;

.field private mTextOffColor:I

.field private mTextOffShadowColor:I

.field private mTextOffShadowRadius:F

.field private mTextOffWidth:I

.field private mTextOn:Ljava/lang/String;

.field private mTextOnColor:I

.field private mTextOnWidth:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mThumbPadding:I

.field private mThumbShadowColor:I

.field private mThumbShadowRadius:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private state:Lcom/android/camera/ui/ToggleSwitch$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    const-string p1, "ON"

    .line 69
    iput-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    const-string p1, "OFF"

    .line 70
    iput-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    const/high16 p1, -0x78000000

    .line 99
    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const p1, -0x4c000001

    .line 100
    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    const p1, -0xcc5501

    .line 102
    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/high16 p1, 0x4d000000    # 1.34217728E8f

    .line 103
    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowColor:I

    const p1, 0x3faa3d71    # 1.33f

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->dp2pxFloat(F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowRadius:F

    const/high16 v0, -0x41000000    # -0.5f

    .line 105
    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowColor:I

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->dp2pxFloat(F)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowRadius:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    const/16 p1, 0x12c

    .line 108
    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mAnimDuration:I

    .line 109
    iget-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_ON:Lcom/android/camera/ui/ToggleSwitch$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_OFF:Lcom/android/camera/ui/ToggleSwitch$State;

    :goto_0
    iput-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "ON"

    .line 69
    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    const-string v0, "OFF"

    .line 70
    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/android/camera/R$styleable;->ToggleSwitch:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, -0x78000000

    .line 116
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const v0, -0x4c000001

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    const/16 v2, 0xc

    const v3, -0xcc5501

    .line 119
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/16 v2, 0xe

    const/high16 v3, 0x4d000000    # 1.34217728E8f

    .line 120
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowColor:I

    const v2, 0x3faa3d71    # 1.33f

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ToggleSwitch;->dp2pxFloat(F)F

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v3

    const/16 v4, 0xd

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    const/16 v3, 0x9

    .line 123
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    const/4 v3, 0x5

    .line 124
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    const/16 v3, 0xa

    const/4 v4, -0x1

    .line 125
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnColor:I

    const/4 v3, 0x6

    .line 126
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffColor:I

    const/4 v0, 0x7

    const/high16 v3, -0x41000000    # -0.5f

    .line 127
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowColor:I

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ToggleSwitch;->dp2pxFloat(F)F

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowRadius:F

    const/16 v0, 0xb

    const/16 v2, 0x30

    .line 129
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextSize:I

    const/4 v0, 0x4

    const/16 v2, 0x12c

    .line 130
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mAnimDuration:I

    const/4 v0, 0x3

    .line 131
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    .line 132
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 136
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 137
    iget v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, p2, v4, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 139
    iget-object v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, p2, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnWidth:I

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffWidth:I

    .line 144
    iget-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_ON:Lcom/android/camera/ui/ToggleSwitch$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCH_OFF:Lcom/android/camera/ui/ToggleSwitch$State;

    :goto_0
    iput-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    .line 145
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/ToggleSwitch;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/ui/ToggleSwitch;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->isMoving:Z

    return p1
.end method

.method private animateToCheckedState()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 438
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 440
    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/ToggleSwitch$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ToggleSwitch$1;-><init>(Lcom/android/camera/ui/ToggleSwitch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 449
    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/ToggleSwitch$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ToggleSwitch$2;-><init>(Lcom/android/camera/ui/ToggleSwitch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 465
    iput v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelPositionAnimator()V
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/android/camera/ui/ToggleSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 433
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private compBackgroundRoundRectAttr()[F
    .locals 5

    .line 350
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v0

    .line 351
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p0

    int-to-float v0, v0

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    int-to-float p0, p0

    sub-float/2addr p0, v1

    sub-float v2, p0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x2

    aput v0, v3, v1

    const/4 v0, 0x3

    aput p0, v3, v0

    const/4 p0, 0x4

    aput v2, v3, p0

    return-object v3
.end method

.method private compThumbRoundRectAttr(F)[F
    .locals 6

    .line 368
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v0

    .line 369
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v1

    .line 370
    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    .line 372
    iget p0, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    add-int v3, v2, p0

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    int-to-float v5, v2

    div-float/2addr v5, v4

    add-float/2addr v5, v0

    mul-float/2addr v5, p1

    add-float/2addr v3, v5

    int-to-float p1, p0

    sub-float/2addr v0, p1

    int-to-float p1, v2

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr p1, v5

    div-float/2addr p1, v4

    sub-float/2addr v0, p1

    add-float/2addr v0, v3

    add-int/2addr v2, p0

    int-to-float p1, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/4 v2, 0x2

    mul-int/2addr p0, v2

    int-to-float p0, p0

    sub-float/2addr v1, p0

    sub-float p0, v1, p1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr p0, v4

    const/4 v4, 0x5

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v3, 0x1

    aput p1, v4, v3

    aput v0, v4, v2

    const/4 p1, 0x3

    aput v1, v4, p1

    const/4 p1, 0x4

    aput p0, v4, p1

    return-object v4
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;I[FZ)V
    .locals 3

    .line 259
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 260
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 262
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 263
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p4, :cond_0

    .line 265
    iget p2, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowRadius:F

    iget p0, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbShadowColor:I

    const/4 p4, 0x0

    invoke-virtual {v0, p2, p4, p4, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    const/4 p0, 0x0

    .line 267
    aget p0, p3, p0

    aget p2, p3, v1

    const/4 p4, 0x2

    aget p4, p3, p4

    const/4 v1, 0x3

    aget v1, p3, v1

    invoke-virtual {v2, p0, p2, p4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p0, 0x4

    .line 268
    aget p2, p3, p0

    aget p0, p3, p0

    invoke-virtual {p1, v2, p2, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRectStroke(Landroid/graphics/Canvas;I)V
    .locals 7

    .line 323
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    if-gtz v0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v0

    .line 327
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v1

    .line 329
    iget v2, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sub-float v4, v1, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 335
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 336
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 337
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    iget p0, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float p0, p0

    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 340
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 341
    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    invoke-virtual {p1, p0, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSwitchOff(Landroid/graphics/Canvas;)V
    .locals 3

    .line 217
    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->compBackgroundRoundRectAttr()[F

    move-result-object v0

    .line 218
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ToggleSwitch;->compThumbRoundRectAttr(F)[F

    move-result-object v0

    .line 221
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    .line 223
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRectStroke(Landroid/graphics/Canvas;I)V

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawText(Landroid/graphics/Canvas;[F)V

    return-void
.end method

.method private drawSwitchOffAnim(Landroid/graphics/Canvas;)V
    .locals 3

    .line 241
    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->compBackgroundRoundRectAttr()[F

    move-result-object v0

    .line 242
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    .line 244
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRectStroke(Landroid/graphics/Canvas;I)V

    .line 246
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ToggleSwitch;->compThumbRoundRectAttr(F)[F

    move-result-object v0

    .line 247
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    .line 249
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawText(Landroid/graphics/Canvas;[F)V

    return-void
.end method

.method private drawSwitchOn(Landroid/graphics/Canvas;)V
    .locals 3

    .line 206
    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->compBackgroundRoundRectAttr()[F

    move-result-object v0

    .line 207
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 209
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ToggleSwitch;->compThumbRoundRectAttr(F)[F

    move-result-object v0

    .line 210
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    .line 212
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRectStroke(Landroid/graphics/Canvas;I)V

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawText(Landroid/graphics/Canvas;[F)V

    return-void
.end method

.method private drawSwitchOnAnim(Landroid/graphics/Canvas;)V
    .locals 3

    .line 229
    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->compBackgroundRoundRectAttr()[F

    move-result-object v0

    .line 230
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundColor:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    .line 232
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mSwitchBackgroundStrokeColor:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRectStroke(Landroid/graphics/Canvas;I)V

    .line 234
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ToggleSwitch;->compThumbRoundRectAttr(F)[F

    move-result-object v0

    .line 235
    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbColor:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/ui/ToggleSwitch;->drawRoundRect(Landroid/graphics/Canvas;I[FZ)V

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/ToggleSwitch;->drawText(Landroid/graphics/Canvas;[F)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;[F)V
    .locals 7

    .line 278
    iget-object p2, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 279
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 280
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 281
    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 282
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 283
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredHeight()I

    move-result v5

    iget v6, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v5, v6

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    .line 285
    iget-boolean v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz v4, :cond_0

    .line 286
    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffColor:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowRadius:F

    iget v6, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowColor:I

    invoke-virtual {p2, v4, v3, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 290
    :cond_0
    iget v4, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnColor:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v6, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffWidth:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    mul-float/2addr v4, v2

    .line 294
    iget-object v6, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOff:Ljava/lang/String;

    int-to-float v5, v5

    invoke-virtual {p1, v6, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    :cond_1
    iget-object p2, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 298
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 299
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 300
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 301
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    .line 304
    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz v0, :cond_2

    .line 305
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 307
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowRadius:F

    iget v5, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffShadowColor:I

    invoke-virtual {p2, v0, v3, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 312
    :goto_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    iget v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mThumbPadding:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mStrokeWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 313
    iget-object p0, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOn:Ljava/lang/String;

    int-to-float v1, v4

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public dp2px(F)I
    .locals 0

    .line 382
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public dp2pxFloat(F)F
    .locals 0

    .line 387
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    return p1
.end method

.method public isChecked()Z
    .locals 0

    .line 475
    iget-boolean p0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 172
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, v0, v1}, Landroid/widget/CompoundButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 174
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v1

    .line 175
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v2

    .line 176
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    move-result v3

    .line 177
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result v4

    .line 178
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result v5

    .line 179
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    .line 182
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v5

    .line 183
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v6

    sub-int/2addr v1, v5

    const/4 v5, 0x2

    .line 185
    div-int/2addr v1, v5

    add-int/2addr v3, v1

    sub-int/2addr v2, v6

    .line 186
    div-int/2addr v2, v5

    add-int/2addr v4, v2

    int-to-float v1, v3

    int-to-float v2, v4

    .line 187
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 189
    sget-object v1, Lcom/android/camera/ui/ToggleSwitch$3;->$SwitchMap$com$android$camera$ui$ToggleSwitch$State:[I

    iget-object v2, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_3

    if-eq v1, v5, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->drawSwitchOffAnim(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->drawSwitchOnAnim(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->drawSwitchOff(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ToggleSwitch;->drawSwitchOn(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 151
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 153
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, 0x42580000    # 54.0f

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOnWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/ToggleSwitch;->mTextOffWidth:I

    add-int/2addr v2, v3

    .line 157
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x41e00000    # 28.0f

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ToggleSwitch;->dp2px(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    const/high16 v4, -0x80000000

    if-eq p1, v4, :cond_0

    .line 160
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    if-eq p2, v4, :cond_1

    .line 164
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 167
    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 397
    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->isMoving:Z

    if-eqz v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eq v0, p1, :cond_5

    .line 402
    iput-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    .line 405
    iget-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mBroadcasting:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mBroadcasting:Z

    .line 410
    iget-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mOnCheckedChangeListener:Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;

    if-eqz p1, :cond_2

    .line 411
    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    invoke-interface {p1, p0, v0}, Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/camera/ui/ToggleSwitch;Z)V

    :cond_2
    const/4 p1, 0x0

    .line 413
    iput-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mBroadcasting:Z

    .line 415
    iget-boolean p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    if-eqz p1, :cond_3

    .line 416
    sget-object p1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCHING_ANIM_ON:Lcom/android/camera/ui/ToggleSwitch$State;

    iput-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    goto :goto_0

    .line 418
    :cond_3
    sget-object p1, Lcom/android/camera/ui/ToggleSwitch$State;->SWITCHING_ANIM_OFF:Lcom/android/camera/ui/ToggleSwitch$State;

    iput-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->state:Lcom/android/camera/ui/ToggleSwitch$State;

    .line 421
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 422
    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->animateToCheckedState()V

    goto :goto_1

    .line 425
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/ToggleSwitch;->cancelPositionAnimator()V

    const/4 p1, 0x0

    .line 426
    iput p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mCurrentPos:F

    :cond_5
    :goto_1
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/android/camera/ui/ToggleSwitch;->mOnCheckedChangeListener:Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 482
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 483
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ToggleSwitch;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ToggleSwitch;->setChecked(Z)V

    return-void
.end method
