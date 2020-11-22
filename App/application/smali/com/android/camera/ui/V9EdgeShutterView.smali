.class public Lcom/android/camera/ui/V9EdgeShutterView;
.super Landroid/view/View;
.source "V9EdgeShutterView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;,
        Lcom/android/camera/ui/V9EdgeShutterView$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final CENTER_RADIUS:I

.field private static final NEAR_THRESHOLD:I

.field private static NORMAL_TAP_MAXY:I

.field private static NORMAL_TOUCH_MAXY:I

.field private static final OUTER_CIRCLE_WIDTH:I

.field private static final OUT_RADIUS:I

.field private static final VIEW_WIDTH:I


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mClickAnim:Landroid/animation/ValueAnimator;

.field private mFlyOutAnim:Landroid/animation/ValueAnimator;

.field private mFlyinInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mMoveAnim:Landroid/animation/ValueAnimator;

.field private mMoveInterpolator:Landroid/view/animation/Interpolator;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mPressInterpolator:Landroid/view/animation/Interpolator;

.field private mVisibleBounds:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x4285570a    # 66.67f

    .line 50
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->NEAR_THRESHOLD:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    .line 54
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070102

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->OUT_RADIUS:I

    .line 56
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070101

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->CENTER_RADIUS:I

    .line 58
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070103

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    .line 60
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    const-string v1, "camera_edge_max"

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TAP_MAXY:I

    .line 61
    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TAP_MAXY:I

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->NEAR_THRESHOLD:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TOUCH_MAXY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyinInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    new-instance p1, Lcom/android/camera/ui/V9EdgeShutterView$ReverseInterpolator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/camera/ui/V9EdgeShutterView$ReverseInterpolator;-><init>(Lcom/android/camera/ui/V9EdgeShutterView;Lcom/android/camera/ui/V9EdgeShutterView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mPressInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    new-instance p1, Lcom/android/camera/ui/V9EdgeShutterView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/V9EdgeShutterView$1;-><init>(Lcom/android/camera/ui/V9EdgeShutterView;)V

    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance p1, Landroid/graphics/Rect;

    sget p2, Lcom/android/camera/Util;->sWindowWidth:I

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V9EdgeShutterView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->hideShutterView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V9EdgeShutterView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->checkPosture()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V9EdgeShutterView;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/V9EdgeShutterView;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V9EdgeShutterView;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V9EdgeShutterView;->setRelateVisible(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private checkPosture()V
    .locals 2

    .line 394
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCapturePosture()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->NORMAL_TAP_MAXY:I

    if-le v0, v1, :cond_3

    .line 398
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->hideShutterView()V

    :cond_3
    return-void
.end method

.method private createFlyOutAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    if-ge v0, v1, :cond_0

    neg-int v1, v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    int-to-float v3, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    int-to-float v1, v1

    aput v1, v0, v2

    const-string v1, "translationX"

    .line 352
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 354
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 355
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private hideShutterView()V
    .locals 2

    .line 386
    iget v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->createFlyOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    .line 388
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x2

    .line 389
    iput v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mVisibleState:I

    :cond_0
    return-void
.end method

.method private setRelateVisible(I)V
    .locals 2

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    .line 432
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 434
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onDeviceMoving()V
    .locals 1

    .line 426
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDevicePostureChanged()V
    .locals 1

    .line 422
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 261
    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v2, Lcom/android/camera/ui/V9EdgeShutterView;->OUT_RADIUS:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    sget v0, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v2, Lcom/android/camera/ui/V9EdgeShutterView;->CENTER_RADIUS:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/V9EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    new-instance v0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V9EdgeShutterView;Lcom/android/camera/ui/V9EdgeShutterView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 255
    sget p1, Lcom/android/camera/ui/V9EdgeShutterView;->VIEW_WIDTH:I

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
