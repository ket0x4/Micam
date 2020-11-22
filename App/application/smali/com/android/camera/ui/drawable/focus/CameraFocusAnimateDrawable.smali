.class public Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraFocusAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static BIG_RADIUS:I

.field public static CENTER_BASE_RADIUS:I


# instance fields
.field private mEvAdjustVisible:I

.field private mFocusingAnimator:Landroid/animation/ValueAnimator;

.field private mIsTouchFocus:Z

.field private mMiddleX:F

.field private mMiddleY:F

.field private mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

.field private mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

.field private mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field private mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

.field private mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

.field private mResetCenterAnimator:Landroid/animation/ValueAnimator;

.field private mShowSplitCircle:Z

.field private mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSuccessFlag:I

.field private mTouchDownAnimator:Landroid/animation/ValueAnimator;

.field private pendingState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 109
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 102
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    .line 103
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->CENTER_BASE_RADIUS:I

    .line 114
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    .line 115
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    .line 116
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    .line 117
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    .line 118
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    .line 120
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0xcd

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 121
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 122
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 123
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 124
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0xf0

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 126
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 127
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 128
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 129
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 130
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusingAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    return-object p0
.end method

.method private cancelSuccessAnimation()V
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 724
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private start3ALockSuccessAnimation()V
    .locals 14

    .line 504
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    .line 507
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setStartOffsetY(F)V

    .line 511
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 515
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    .line 516
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 517
    new-instance v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$7;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$7;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 527
    new-instance v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$8;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$8;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v5, v0, [F

    .line 537
    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 538
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 539
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 540
    new-instance v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$9;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$9;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 551
    new-instance v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$10;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$10;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v3, v0, [F

    .line 562
    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v6, 0x12c

    .line 563
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    .line 564
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 565
    new-instance v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$11;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$11;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 575
    new-instance v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;

    invoke-direct {v4, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 587
    iget-object v4, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v1

    const/4 v1, 0x1

    aput-object v5, v6, v1

    aput-object v3, v6, v0

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 589
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    .line 590
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v8, 0x3e800000    # 0.25f

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3e800000    # 0.25f

    const v11, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v7, v0

    .line 591
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 593
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 594
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 609
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startFocusingAnimation()V
    .locals 4

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 328
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    .line 329
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v2}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 331
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data
.end method

.method private startNormalFocusSuccessAnimation()V
    .locals 3

    .line 424
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setStartOffsetY(F)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/16 v1, 0xff

    .line 429
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 432
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 433
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 434
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 437
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$5;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 452
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$6;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$6;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 482
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelFocusingAnimation()V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public cancelResetCenter()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mResetCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_2

    .line 214
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 215
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mShowSplitCircle:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    if-eq v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 220
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 226
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mEvAdjustVisible:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 232
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    if-ne v0, v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    const v1, 0xffd322

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_1

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->resetPaint()V

    .line 239
    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_2
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setDistanceY(F)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setEvValue(F)V

    .line 171
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setEvValue(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setCenter(II)V
    .locals 2

    int-to-float p1, p1

    .line 151
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleX:F

    int-to-float p2, p2

    .line 152
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mMiddleY:F

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 164
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->CENTER_BASE_RADIUS:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setEvAdjustVisible(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mEvAdjustVisible:I

    .line 181
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setEvChanged(FF)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setEvValue(F)V

    .line 654
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setDistanceY(F)V

    .line 657
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;->setEvValue(F)V

    .line 658
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setEvTextVisible(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLockIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setAEAFIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setOrientation(I)V

    return-void
.end method

.method public setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public setShowSplitCircle(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mShowSplitCircle:Z

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startFocusFailAnimation()V
    .locals 3

    .line 613
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    .line 615
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 616
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 621
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 626
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigSplitCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 628
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 631
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 633
    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$14;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$14;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 646
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startFocusSuccessAnimation(IZ)V
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    .line 387
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    .line 388
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    .line 390
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mIsTouchFocus:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 391
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 395
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return-void

    .line 399
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    .line 400
    iput p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    return-void

    .line 405
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->getVisible()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 410
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    const/4 v0, 0x5

    if-eq p1, p2, :cond_4

    if-ne p1, v0, :cond_5

    .line 411
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    iget p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 414
    :cond_5
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mSuccessFlag:I

    if-ne p1, v0, :cond_6

    .line 415
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->start3ALockSuccessAnimation()V

    goto :goto_0

    .line 417
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startNormalFocusSuccessAnimation()V

    :goto_0
    return-void
.end method

.method public startTouchDownAnimation()V
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    .line 245
    invoke-direct {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelSuccessAnimation()V

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    const/4 v0, -0x1

    .line 247
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->pendingState:I

    .line 250
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    .line 252
    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintBigCircle:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 256
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 257
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 259
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stop()V
    .locals 0

    return-void
.end method
