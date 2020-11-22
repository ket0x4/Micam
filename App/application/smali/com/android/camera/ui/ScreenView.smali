.class public Lcom/android/camera/ui/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ScreenView$SavedState;,
        Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;,
        Lcom/android/camera/ui/ScreenView$SlideBar;,
        Lcom/android/camera/ui/ScreenView$SeekBarIndicator;,
        Lcom/android/camera/ui/ScreenView$ArrowIndicator;,
        Lcom/android/camera/ui/ScreenView$Indicator;,
        Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;,
        Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;
    }
.end annotation


# static fields
.field protected static final INDICATOR_MEASURE_SPEC:I

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SMOOTHING_CONSTANT:F


# instance fields
.field protected final DEFAULT_CAMERA_DISTANCE:F

.field private isFromcomputeScroll:Z

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field private mScreenCounter:I

.field protected mScreenOffset:I

.field protected mScreenPaddingBottom:I

.field protected mScreenPaddingTop:I

.field protected mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBounds:I

.field protected mScrollOffset:I

.field protected mScrollRightBounds:I

.field protected mScrollWholeScreen:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field protected mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    .line 42
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 45
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 309
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    const v0, 0x7f0801be

    .line 52
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    const v0, 0x7f0801bf

    .line 53
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    const v0, 0x7f0801c0

    .line 54
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    const v0, 0x7f0801c1

    .line 55
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    const v0, 0x7f0801c2

    .line 57
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 75
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    const v2, 0x3eaaaaab

    .line 85
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 86
    iput-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    .line 89
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 101
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 108
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 111
    iput-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 122
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 129
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    const/16 p1, 0x12c

    .line 131
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    .line 148
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    const p1, 0x3fa66666    # 1.3f

    .line 151
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    .line 278
    new-instance p1, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    .line 1481
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x44a00000    # 1280.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 310
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 331
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    const p2, 0x7f0801be

    .line 52
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    const p2, 0x7f0801bf

    .line 53
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    const p2, 0x7f0801c0

    .line 54
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    const p2, 0x7f0801c1

    .line 55
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    const p2, 0x7f0801c2

    .line 57
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 75
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    const/4 p2, 0x0

    .line 77
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    const/4 p3, -0x1

    .line 82
    iput p3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    const v0, 0x3eaaaaab

    .line 85
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 86
    iput-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    .line 89
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 101
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 108
    iput-boolean p2, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 111
    iput-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 122
    iput p3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 129
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    const/16 p1, 0x12c

    .line 131
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    .line 148
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    const p1, 0x3fa66666    # 1.3f

    .line 151
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    .line 278
    new-instance p1, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    .line 1481
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x44a00000    # 1280.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 332
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ScreenView;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ScreenView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    return p0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .line 1399
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1400
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1401
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p0, 0x0

    const/4 v1, 0x4

    .line 1402
    invoke-virtual {v0, v1, p0, v1, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-object v0
.end method

.method private initScreenView()V
    .locals 4

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 340
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 341
    new-instance v0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lcom/android/camera/ui/ScreenView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    .line 342
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->setMaximumSnapVelocity(I)V

    .line 349
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1031
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1033
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 1034
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method private refreshScrollBounds()V
    .locals 3

    .line 737
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    neg-int v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBounds:I

    .line 738
    iget-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-nez v1, :cond_0

    int-to-float v0, v0

    .line 739
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBounds:I

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBounds:I

    :goto_0
    return-void
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1025
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1026
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1027
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    mul-int/2addr p0, p1

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private snapByVelocity(I)V
    .locals 4

    .line 1130
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result p1

    float-to-int p1, p1

    .line 1135
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1136
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_1

    .line 1137
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1138
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 1139
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1141
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_1

    .line 1143
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    mul-int/2addr p1, v0

    .line 1144
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    shr-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, p1

    const/4 p1, 0x0

    .line 1145
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_2

    if-gtz p1, :cond_0

    .line 722
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    goto :goto_0

    .line 723
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    .line 720
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 724
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRight:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    .line 725
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    .line 726
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    goto :goto_1

    .line 727
    :cond_1
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    .line 724
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method private updateIndicatorPositions(I)V
    .locals 13

    .line 624
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_d

    .line 625
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 626
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 627
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    move p1, v3

    .line 629
    :goto_0
    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge p1, v5, :cond_d

    add-int v5, p1, v0

    .line 630
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 631
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 633
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 634
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 639
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v10, -0x1

    const/16 v11, 0x10

    if-eq v9, v10, :cond_6

    and-int/lit8 v10, v9, 0x7

    and-int/lit8 v9, v9, 0x70

    const/4 v12, 0x1

    if-eq v10, v12, :cond_2

    const/4 v12, 0x3

    if-eq v10, v12, :cond_1

    const/4 v12, 0x5

    if-eq v10, v12, :cond_0

    .line 657
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_0
    sub-int v10, v1, v7

    .line 654
    iget v12, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 647
    :cond_1
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    sub-int v10, v1, v7

    .line 650
    div-int/lit8 v10, v10, 0x2

    iget v12, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v12

    iget v12, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v10, v12

    :goto_2
    if-eq v9, v11, :cond_5

    const/16 v12, 0x30

    if-eq v9, v12, :cond_4

    const/16 v12, 0x50

    if-eq v9, v12, :cond_3

    .line 672
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_3
    sub-int v9, v2, v8

    .line 669
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 662
    :cond_4
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_5
    sub-int v9, v2, v8

    .line 665
    div-int/lit8 v9, v9, 0x2

    iget v12, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v12

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int v6, v9, v6

    goto :goto_4

    :cond_6
    move v6, v3

    move v10, v6

    .line 675
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    if-gtz v9, :cond_8

    :cond_7
    iget-boolean v9, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    if-eqz v9, :cond_a

    .line 677
    :cond_8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v11, :cond_9

    int-to-float v6, v4

    .line 678
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    .line 679
    :cond_9
    move-object v6, v5

    check-cast v6, Lcom/android/camera/ui/ScreenView$Indicator;

    add-int/2addr v10, v4

    invoke-interface {v6, v10}, Lcom/android/camera/ui/ScreenView$Indicator;->fastOffset(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 680
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 683
    :cond_a
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v9, v11, :cond_b

    move v4, v3

    :cond_b
    add-int/2addr v10, v4

    add-int/2addr v7, v10

    add-int/2addr v8, v6

    .line 686
    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_c
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private updateScreenOffset()V
    .locals 3

    .line 606
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenAlignment:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 614
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 611
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 608
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenOffset:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    .line 620
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    return-void
.end method

.method private updateSeekPoints(II)V
    .locals 6

    .line 1408
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1409
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1411
    iget-object p0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 1414
    :goto_0
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v3, v4, :cond_1

    add-int v4, p1, v3

    if-ge v4, v0, :cond_1

    .line 1415
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1420
    :cond_1
    :goto_1
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v2, p1, :cond_2

    add-int p1, p2, v2

    if-ge p1, v0, :cond_2

    .line 1421
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 0

    .line 698
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result p1

    .line 699
    iget-object p0, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    if-eqz p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$SlideBar;->getSlideWidth()I

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1259
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-gez p2, :cond_0

    goto :goto_0

    .line 1264
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1267
    :goto_0
    iget p2, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    const/4 v1, 0x1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1268
    iget-object p2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz p2, :cond_1

    .line 1269
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result p2

    if-le p2, v1, :cond_1

    .line 1271
    iget-object p2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1275
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBounds()V

    .line 1277
    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public computeScroll()V
    .locals 5

    const/4 v0, 0x1

    .line 765
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 766
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x4e6e6b28    # 1.0E9f

    if-eqz v1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 768
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScrollX(I)V

    .line 769
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 770
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScrollY(I)V

    .line 771
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    goto :goto_0

    .line 772
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 773
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 774
    iput v4, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 775
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v1, v0, :cond_3

    .line 776
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, v3

    .line 777
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    sub-float v1, v0, v1

    sget v3, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 778
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 779
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScrollX(I)V

    .line 780
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    .line 783
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 787
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    .line 788
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScreenView;->updateSlidePointPosition(I)V

    .line 789
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScreenView;->updateArrowIndicatorResource(I)V

    .line 790
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 924
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_1

    sub-int/2addr v1, v0

    .line 925
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 929
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 930
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    return v0

    .line 934
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 904
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 905
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    const/4 v0, 0x1

    .line 1150
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1151
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .line 1216
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 1248
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1251
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScreenCount()I
    .locals 0

    .line 1200
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 794
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 795
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->computeScroll()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 976
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 977
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 978
    invoke-virtual {p0, p1, v4}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1012
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 984
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 985
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 986
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 988
    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    .line 989
    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    .line 992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    .line 995
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 996
    iput-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 1004
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1005
    invoke-virtual {p0, p1, v4}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1016
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v1, v0, :cond_5

    .line 1017
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1020
    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-nez p1, :cond_6

    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz p0, :cond_7

    if-eq p0, v2, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 875
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->setFrame(IIII)Z

    .line 877
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 878
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 880
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    .line 883
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p2, p1, :cond_1

    .line 886
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 887
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_0

    .line 890
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr p5, v0

    .line 891
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p3

    .line 892
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v1, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 888
    invoke-virtual {p4, p3, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 893
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p3, p4

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 897
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget p2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int p3, p1, p2

    if-lez p3, :cond_2

    .line 898
    rem-int p2, p1, p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 800
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    .line 801
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    .line 805
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 808
    :goto_0
    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v2, v5, :cond_0

    add-int v5, v2, v0

    .line 809
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 811
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 814
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 813
    invoke-static {p1, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 817
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    iget v9, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v8, v9

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 815
    invoke-static {p2, v8, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 820
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 821
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 822
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v2, v0, :cond_1

    .line 829
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 831
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 834
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 833
    invoke-static {p1, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 837
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 835
    invoke-static {p2, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 840
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    .line 841
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 842
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 844
    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 845
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 848
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    .line 849
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 852
    invoke-static {v2, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v2

    .line 853
    invoke-static {v3, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    .line 851
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p2, 0x1

    if-lez v0, :cond_2

    .line 856
    iput v5, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    .line 857
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 858
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->updateScreenOffset()V

    .line 859
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    .line 860
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez p1, :cond_2

    .line 861
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    div-int/lit8 v2, p1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 865
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-lez p1, :cond_3

    .line 866
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 867
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 868
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 869
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    :cond_3
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1710
    check-cast p1, Lcom/android/camera/ui/ScreenView$SavedState;

    .line 1711
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1712
    iget p1, p1, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1713
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1703
    new-instance v0, Lcom/android/camera/ui/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1704
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iput p0, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1040
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1042
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    if-eqz v0, :cond_1

    .line 1043
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1046
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    .line 1081
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 1083
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1084
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    if-ne v3, v4, :cond_a

    if-nez v0, :cond_3

    move v2, v1

    .line 1089
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 1090
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 1091
    iget-object p1, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_0

    .line 1051
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1052
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1055
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_a

    .line 1057
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 1059
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1060
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1062
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1063
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1064
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_7

    .line 1067
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1069
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    goto :goto_0

    .line 1075
    :cond_8
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_9

    .line 1076
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapByVelocity(I)V

    .line 1078
    :cond_9
    invoke-virtual {p0, p1, v2}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1096
    :cond_a
    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    return v1
.end method

.method public removeAllScreens()V
    .locals 2

    .line 1353
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/ScreenView;->removeScreensInLayout(II)V

    .line 1354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 1300
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1301
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 1

    if-ltz p1, :cond_2

    .line 1359
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1360
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1362
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_1

    .line 1363
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    :cond_1
    const/4 v0, 0x0

    .line 1365
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1366
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 1285
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 1294
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 1288
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViews(II)V
    .locals 0

    .line 1297
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 1291
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 910
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 911
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 912
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 913
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    const/4 p0, 0x1

    return p0

    .line 918
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1483
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 1484
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1485
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1486
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1487
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1488
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1489
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1490
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1491
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1492
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1493
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    .line 757
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBounds:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBounds:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 758
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 759
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float p1, v0

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 760
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    float-to-int p1, p1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2

    .line 748
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 749
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 751
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 752
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .line 1226
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1228
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1233
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 1234
    iget-boolean p1, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-nez p1, :cond_2

    .line 1235
    iget-object p1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1236
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrollToScreen(I)V

    .line 1237
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1

    .line 1242
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/ScreenView;->updateSeekPoints(II)V

    .line 1243
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    const/4 p1, -0x1

    .line 1244
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 1391
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1392
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1394
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0

    .line 732
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 733
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBounds()V

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 3

    .line 942
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 944
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 945
    iget p2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez p2, :cond_1

    const/4 p1, -0x1

    .line 946
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 947
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 948
    iget-object p0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->recycle()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 952
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 956
    :cond_2
    iget-boolean p2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    if-eqz p2, :cond_3

    .line 957
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 961
    iget p2, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 962
    invoke-virtual {p2}, Landroid/view/View;->cancelLongPress()V

    .line 965
    :cond_3
    iget p2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne p2, v1, :cond_4

    .line 966
    iget p2, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 967
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 968
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    :cond_4
    :goto_1
    return-void
.end method

.method public snapToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1155
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 9

    .line 1159
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_0

    return-void

    .line 1163
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1164
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1165
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 1167
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1170
    :goto_0
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1171
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1175
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-eqz p3, :cond_3

    .line 1178
    iget-object p3, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    goto :goto_1

    .line 1180
    :cond_3
    iget-object p3, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {p3}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    .line 1183
    :goto_1
    iget p3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr p3, v0

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr p3, v0

    .line 1184
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    sub-int v6, p3, v0

    .line 1185
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr p3, v0

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    div-int/2addr p3, v0

    if-lez p2, :cond_4

    int-to-float v0, p3

    int-to-float p2, p2

    const v1, 0x451c4000    # 2500.0f

    div-float/2addr p2, v1

    div-float/2addr v0, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p3, p2

    .line 1191
    :cond_4
    iget p2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p1, v2, :cond_5

    .line 1193
    iget p1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v8, p1

    goto :goto_2

    :cond_5
    move v8, p2

    .line 1195
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1196
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 10

    .line 1496
    instance-of v0, p1, Lcom/android/camera/ui/ScreenView$Indicator;

    if-eqz v0, :cond_0

    return-void

    .line 1499
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1501
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float v4, v0, v3

    div-float v3, v1, v3

    .line 1504
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    .line 1505
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    const v6, 0x459c4000    # 5000.0f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 1619
    :pswitch_0
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_5

    :pswitch_1
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_2

    .line 1602
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1

    goto :goto_0

    .line 1606
    :cond_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float p0, v8, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr v0, v5

    .line 1607
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1608
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1609
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1610
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1611
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1612
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1613
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1614
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 p0, 0x42b40000    # 90.0f

    neg-float v0, v5

    mul-float/2addr v0, p0

    .line 1615
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1616
    invoke-virtual {p1, v6}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_5

    .line 1603
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_2
    cmpg-float v2, v5, v9

    if-gtz v2, :cond_3

    .line 1585
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_3
    sub-float v2, v8, v5

    .line 1588
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    sub-float/2addr v8, v2

    mul-float/2addr v0, v8

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    .line 1590
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v1, v8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 1591
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1592
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1593
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1594
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 1595
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    .line 1596
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1597
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1598
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 1599
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_5

    :pswitch_3
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_5

    .line 1564
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4

    goto :goto_1

    .line 1568
    :cond_4
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float p0, v8, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 1569
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    mul-float p0, v0, v5

    .line 1570
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v7

    sub-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v7, v5

    add-float/2addr v7, v8

    .line 1572
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1573
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1574
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 1575
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1576
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1577
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 p0, 0x42340000    # 45.0f

    neg-float v0, v5

    mul-float/2addr v0, p0

    .line 1578
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1579
    invoke-virtual {p1, v6}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_5

    .line 1565
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_4
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_8

    .line 1547
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_6

    goto :goto_2

    .line 1551
    :cond_6
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1552
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1553
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1554
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1555
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    cmpg-float p0, v5, v9

    if-gez p0, :cond_7

    move v0, v9

    .line 1556
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1557
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1558
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1559
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 p0, -0x3d4c0000    # -90.0f

    mul-float/2addr v5, p0

    .line 1560
    invoke-virtual {p1, v5}, Landroid/view/View;->setRotationY(F)V

    .line 1561
    invoke-virtual {p1, v6}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_5

    .line 1548
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_5
    cmpl-float v0, v5, v9

    if-eqz v0, :cond_a

    .line 1530
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_9

    goto :goto_3

    .line 1534
    :cond_9
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1535
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1536
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1537
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1538
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1539
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1540
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    neg-float v0, v5

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    .line 1541
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1542
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1543
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 1544
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_5

    .line 1531
    :cond_a
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_5

    :pswitch_6
    cmpl-float v0, v5, v9

    if-eqz v0, :cond_c

    .line 1513
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_b

    goto :goto_4

    .line 1517
    :cond_b
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v8, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1518
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1519
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1520
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1521
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1522
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 1523
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    .line 1524
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1525
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1526
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 1527
    iget p0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_5

    .line 1514
    :cond_c
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_5

    .line 1510
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_5

    .line 1507
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    :goto_5
    :pswitch_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0

    return-void
.end method
