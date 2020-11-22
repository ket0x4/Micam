.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$ExposureViewListener;
    }
.end annotation


# static fields
.field private static final GAP_NUM:F

.field public static final MAX_SLIDE_DISTANCE:I

.field private static final TRIANGLE_BASE_DIS:I


# instance fields
.field private final MIN_DRAG_DISTANCE:I

.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBeingDragged:Z

.field private mBeingEvAdjusted:Z

.field private mBottomRelative:I

.field private mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

.field private mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mCaptured:Z

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentMode:I

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDownStartTime:J

.field private mDragMode:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field private mEVCaptureRatio:F

.field private mEvValue:F

.field private mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mExposureX:I

.field private mExposureY:I

.field private mFailTime:J

.field private mFocusMoving:Z

.field private mFocusX:I

.field private mFocusY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDown:Z

.field private mIsDraw:Z

.field private mIsEvAdjustable:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mLockBodyBitmap:Landroid/graphics/Bitmap;

.field private mLockHeadBitmap:Landroid/graphics/Bitmap;

.field private mMode:I

.field private mOrientation:I

.field private mRotation:F

.field private mScrollDistanceY:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "camera_exposure_compensation_steps_num"

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const v0, 0x42dc999a    # 110.3f

    .line 102
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    const/high16 v0, 0x40400000    # 3.0f

    .line 103
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 369
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 114
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 124
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 139
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 191
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const-wide/16 v0, -0x1

    .line 223
    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mDownStartTime:J

    .line 234
    new-instance v0, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    .line 1161
    new-instance v0, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 370
    move-object v0, p1

    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    .line 372
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 374
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 375
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 376
    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 379
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080002

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 383
    new-instance p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p1}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 384
    new-instance p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p1}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 385
    new-instance p1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    .line 386
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080180

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mLockHeadBitmap:Landroid/graphics/Bitmap;

    .line 388
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08017f

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mLockBodyBitmap:Landroid/graphics/Bitmap;

    .line 389
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mLockHeadBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mLockBodyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setLockIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 390
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 391
    new-instance p1, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    .line 392
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 394
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    .line 395
    iput p1, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/FocusView;FFF)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p0
.end method

.method static synthetic access$2302(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p0
.end method

.method static synthetic access$2402(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method static synthetic access$2500()I
    .locals 1

    .line 52
    sget v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return p0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/FocusView;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    return p0
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/FocusView;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetCenter()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method private calculateAttribute()V
    .locals 19

    move-object/from16 v0, p0

    .line 1332
    iget v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {v0, v1}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v1

    .line 1333
    iget v2, v0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {v0, v2}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v2

    .line 1336
    iget v3, v0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v3, :cond_6

    const/high16 v8, 0x40c00000    # 6.0f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x40f00000    # 7.5f

    const/high16 v11, 0x3fc00000    # 1.5f

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v13, 0x40a00000    # 5.0f

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v3, v5, :cond_4

    const v16, 0x3e4ccccd    # 0.2f

    const v17, 0x3f69fbe7    # 0.914f

    const/high16 v18, 0x3f800000    # 1.0f

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_0

    .line 1390
    iput v5, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1

    .line 1338
    :cond_0
    iget v3, v0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v5, v3, v14

    if-gez v5, :cond_1

    mul-float/2addr v3, v15

    sub-float v18, v18, v2

    mul-float v18, v18, v3

    add-float v2, v2, v18

    mul-float/2addr v2, v15

    add-float/2addr v2, v8

    .line 1340
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1341
    iget v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v2, v1

    mul-float v17, v17, v3

    add-float v17, v17, v14

    mul-float v2, v2, v17

    float-to-int v2, v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    int-to-float v1, v1

    mul-float v3, v3, v16

    add-float/2addr v3, v9

    mul-float/2addr v1, v3

    .line 1342
    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    goto/16 :goto_2

    :cond_1
    sub-float/2addr v3, v14

    mul-float/2addr v3, v15

    .line 1346
    invoke-static {v11}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    mul-float v2, v1, v3

    sub-float v18, v18, v3

    sub-float v2, v2, v18

    mul-float v5, v2, v15

    add-float/2addr v5, v13

    .line 1347
    invoke-static {v5}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v5

    iput v5, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float/2addr v2, v12

    add-float/2addr v2, v10

    .line 1348
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    mul-float v18, v18, v12

    add-float v18, v18, v13

    mul-float/2addr v1, v15

    mul-float/2addr v1, v3

    add-float v18, v18, v1

    .line 1349
    invoke-static/range {v18 .. v18}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    goto/16 :goto_0

    .line 1354
    :cond_2
    iget v3, v0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v5, v3, v14

    if-gtz v5, :cond_3

    mul-float/2addr v3, v15

    .line 1356
    invoke-static {v11}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    sub-float v18, v18, v3

    mul-float v1, v2, v18

    sub-float/2addr v1, v3

    mul-float v5, v1, v15

    add-float/2addr v5, v13

    .line 1357
    invoke-static {v5}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v5

    iput v5, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float/2addr v1, v12

    add-float/2addr v1, v10

    .line 1358
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    mul-float/2addr v3, v12

    add-float/2addr v3, v13

    mul-float/2addr v2, v15

    mul-float v2, v2, v18

    add-float/2addr v3, v2

    .line 1359
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    goto :goto_0

    :cond_3
    sub-float/2addr v3, v14

    mul-float/2addr v3, v15

    const/high16 v2, 0x41000000    # 8.0f

    sub-float v1, v18, v1

    mul-float/2addr v1, v3

    mul-float/2addr v1, v15

    sub-float/2addr v2, v1

    .line 1363
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1364
    iget v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v2, v1

    sub-float v18, v18, v3

    mul-float v17, v17, v18

    add-float v17, v17, v14

    mul-float v2, v2, v17

    float-to-int v2, v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    int-to-float v1, v1

    mul-float v18, v18, v16

    add-float v18, v18, v9

    mul-float v1, v1, v18

    .line 1365
    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    goto :goto_2

    .line 1371
    :cond_4
    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, v0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-ge v2, v3, :cond_5

    mul-float/2addr v1, v15

    add-float/2addr v1, v8

    .line 1372
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1373
    iget v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v2, v1

    mul-float/2addr v2, v14

    float-to-int v2, v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    .line 1374
    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    goto :goto_2

    .line 1377
    :cond_5
    invoke-static {v11}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    mul-float/2addr v15, v1

    add-float/2addr v15, v13

    .line 1378
    invoke-static {v15}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    mul-float/2addr v1, v12

    add-float/2addr v1, v10

    .line 1379
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 1380
    invoke-static {v15}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    :goto_0
    move v6, v7

    goto :goto_2

    .line 1385
    :cond_6
    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v1, :cond_7

    .line 1386
    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 1387
    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v1

    if-eqz v1, :cond_7

    move v5, v4

    :cond_7
    iput v5, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :goto_1
    const/4 v6, 0x0

    .line 1395
    :goto_2
    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    .line 1397
    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    .line 1400
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    .line 1401
    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    .line 1402
    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    .line 1403
    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    .line 1406
    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    .line 1407
    iget v2, v0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iput v2, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    .line 1409
    iget v1, v0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eq v1, v4, :cond_a

    if-ne v1, v7, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v6, :cond_9

    goto :goto_3

    .line 1413
    :cond_9
    iget v6, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :goto_3
    iput v6, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_6

    .line 1410
    :cond_a
    :goto_4
    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v2, v0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 1411
    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    iget v6, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :goto_5
    iput v6, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 1415
    :goto_6
    iget-object v1, v0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v0, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1070
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private getCurrentAngle()I
    .locals 7

    .line 1420
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x168

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 1422
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1423
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p0

    div-int p0, v0, p0

    goto :goto_0

    :cond_0
    move p0, v5

    .line 1425
    :goto_0
    invoke-static {p0, v5, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    goto :goto_2

    .line 1426
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    .line 1427
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v0, p0

    .line 1428
    sget p0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v0, v5, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    .line 1429
    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v1, v0, 0x2

    if-lt p0, v1, :cond_2

    .line 1430
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p0, v1

    mul-int/2addr p0, v4

    div-int/2addr v0, v3

    div-int/2addr p0, v0

    goto :goto_1

    :cond_2
    move p0, v5

    .line 1432
    :goto_1
    invoke-static {p0, v5, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    :goto_2
    rsub-int v5, p0, 0x168

    goto :goto_3

    :cond_3
    const/16 v3, 0x87

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x43070000    # 135.0f

    if-ne v0, v2, :cond_4

    .line 1434
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr p0, v4

    mul-float/2addr p0, v6

    float-to-int p0, p0

    .line 1435
    invoke-static {p0, v5, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    goto :goto_3

    :cond_4
    if-ne v0, v1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1437
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p0, v1

    mul-float/2addr p0, v4

    sub-float/2addr v0, p0

    mul-float/2addr v0, v6

    float-to-int p0, v0

    .line 1438
    invoke-static {p0, v5, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    :cond_5
    :goto_3
    return v5
.end method

.method private getItemByCoordinate()I
    .locals 3

    .line 1109
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/2addr v0, v1

    .line 1110
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method private getItemRatio(I)F
    .locals 2

    int-to-float p1, p1

    .line 1325
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-ltz v0, :cond_0

    sub-float/2addr p1, p0

    :cond_0
    mul-float/2addr p1, v1

    return p1
.end method

.method private handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v2, :cond_8

    .line 476
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eqz p1, :cond_5

    if-eq p1, v9, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 478
    invoke-interface {p1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v11, :cond_2

    .line 481
    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 482
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_1

    .line 484
    :cond_1
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_1

    :cond_2
    if-ne p1, v10, :cond_6

    .line 487
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v5, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v6, p1

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v7, p1

    move-object v2, p0

    move v3, v0

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 488
    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 489
    iput-boolean v8, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    goto :goto_1

    .line 490
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v5, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v6, p1

    sget p1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v7, p1

    move-object v2, p0

    move v3, v0

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 491
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_1

    .line 493
    :cond_4
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_1

    .line 479
    :cond_5
    :goto_0
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 496
    :cond_6
    :goto_1
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne p1, v10, :cond_7

    .line 497
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    .line 498
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto/16 :goto_5

    :cond_7
    if-ne p1, v9, :cond_10

    .line 500
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    .line 501
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto/16 :goto_5

    .line 503
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v10, :cond_10

    .line 504
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    sub-float/2addr v0, p1

    .line 505
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    sub-float/2addr v1, p1

    .line 506
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    if-nez p1, :cond_b

    const/4 p1, 0x0

    .line 508
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v2, v10, :cond_9

    .line 509
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float p1, p1

    sub-float/2addr p1, v0

    mul-float/2addr v2, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    :goto_2
    int-to-float v3, p1

    sub-float/2addr v3, v1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    mul-float/2addr v3, p1

    add-float p1, v2, v3

    goto :goto_3

    :cond_9
    if-ne v2, v9, :cond_a

    .line 511
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float p1, p1

    sub-float/2addr p1, v0

    mul-float/2addr v2, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    goto :goto_2

    .line 513
    :cond_a
    :goto_3
    iget v2, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_b

    return v8

    .line 517
    :cond_b
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v11, :cond_c

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-eq p1, v11, :cond_c

    .line 518
    invoke-direct {p0, v10}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 519
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->trackSplitMode()V

    .line 521
    :cond_c
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v3

    int-to-float p1, p1

    .line 522
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 521
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 523
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 524
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 523
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 525
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v1, v10, :cond_e

    .line 526
    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int p1, p1

    .line 527
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    float-to-int p1, v0

    .line 528
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    .line 529
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-nez p1, :cond_d

    .line 530
    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    .line 532
    :cond_d
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    goto :goto_4

    :cond_e
    if-ne v1, v9, :cond_f

    .line 534
    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int p1, p1

    .line 535
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    float-to-int p1, v0

    .line 536
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    .line 537
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    .line 538
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateExposureArea()V

    .line 540
    :cond_f
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_10
    :goto_5
    return v8
.end method

.method private hideTipMessage(I)V
    .locals 1

    .line 1483
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-lez p1, :cond_0

    .line 1484
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1485
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method private isInCircle(FFF)Z
    .locals 1

    .line 1444
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 1445
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    .line 1446
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    float-to-double p2, p3

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInCircle(FFFFF)Z
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    .line 1453
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    float-to-double p2, p5

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStableStart()Z
    .locals 2

    .line 1047
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1050
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez p0, :cond_1

    return v1

    .line 1054
    :cond_1
    invoke-interface {p0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result p0

    return p0
.end method

.method private processParameterIfNeeded(F)V
    .locals 1

    .line 619
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz p1, :cond_0

    .line 620
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 621
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1075
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1076
    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 1077
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1078
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 0

    return-void
.end method

.method private reset(I)V
    .locals 3

    .line 824
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return-void

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    const/4 v0, 0x0

    .line 829
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 830
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 831
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 832
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 834
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 837
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 838
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const p1, 0x7f0f014e

    .line 839
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->hideTipMessage(I)V

    .line 840
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 841
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 842
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 843
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 845
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 846
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private resetCenter()V
    .locals 3

    const/4 v0, 0x0

    .line 850
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    .line 853
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_0

    return-void

    .line 858
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 859
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 860
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 861
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 863
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 864
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 865
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 866
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 867
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 869
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method private resetEvValue()V
    .locals 2

    const/4 v0, 0x0

    .line 1099
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    const/4 v1, 0x0

    .line 1100
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    .line 1101
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1102
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    .line 1103
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    .line 1104
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->reset()V

    .line 1105
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->reset()V

    return-void
.end method

.method private setCenter(II)V
    .locals 1

    .line 1001
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 1002
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 1003
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 1006
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz p0, :cond_1

    .line 1007
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    :cond_1
    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 1

    .line 1128
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, p2, :cond_1

    .line 1129
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1130
    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz p2, :cond_0

    .line 1141
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xa9

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz p2, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    .line 1146
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_1
    return-void
.end method

.method private setDraw(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1083
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    .line 1084
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    .line 1086
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return-void
.end method

.method private setMode(I)V
    .locals 5

    .line 413
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq p1, v3, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    move p1, v3

    .line 423
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v1, :cond_3

    if-ne p1, v2, :cond_3

    .line 424
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 427
    :cond_3
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    .line 428
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/16 v0, 0x8

    const/4 v4, 0x0

    if-nez p1, :cond_4

    .line 429
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 430
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 431
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    goto :goto_2

    :cond_4
    if-ne p1, v3, :cond_5

    .line 433
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 434
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 435
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    goto :goto_2

    :cond_5
    if-eq p1, v1, :cond_6

    if-ne p1, v2, :cond_9

    .line 437
    :cond_6
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 438
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 439
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    .line 440
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 441
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz p1, :cond_7

    .line 442
    invoke-interface {p1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 443
    invoke-interface {p1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v1

    goto :goto_1

    :cond_7
    move p1, v3

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 444
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v0, p1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 445
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v2, :cond_8

    .line 446
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    goto :goto_2

    .line 448
    :cond_8
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    if-ne p1, v1, :cond_9

    .line 449
    iput v3, p0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    :cond_9
    :goto_2
    return-void
.end method

.method private setTouchDown()V
    .locals 2

    .line 1095
    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    return-void
.end method

.method private showTipMessage(II)V
    .locals 1

    .line 1471
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-nez p0, :cond_0

    return-void

    .line 1475
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 1476
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    :cond_1
    const/4 v0, 0x2

    .line 1478
    invoke-interface {p0, p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    return-void
.end method

.method private startAnimation()V
    .locals 2

    .line 1318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    .line 1319
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1321
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopEvAdjust()V
    .locals 2

    .line 1151
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1152
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    .line 1154
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa9

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    .line 1156
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    :cond_0
    return-void
.end method

.method private trackEvAdjusted()V
    .locals 2

    .line 605
    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 607
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string v0, "\u540e\u6444"

    :goto_0
    const-string v1, "\u524d\u540e\u6444"

    .line 606
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6a21\u5f0f"

    .line 609
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "counter"

    const-string v1, "ev_adjusted"

    .line 611
    invoke-static {v0, v1, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackSplitMode()V
    .locals 1

    const-string p0, "counter"

    const-string v0, "manual_split_mode"

    .line 615
    invoke-static {p0, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateEV()V
    .locals 3

    .line 955
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 957
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 959
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    :goto_0
    return-void
.end method

.method private updateExposureArea()V
    .locals 2

    .line 457
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;

    if-eqz v0, :cond_0

    .line 459
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;->onMeteringAreaChanged(II)V

    :cond_0
    return-void
.end method

.method private updateFocusArea()V
    .locals 2

    .line 465
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;

    if-eqz v0, :cond_0

    .line 467
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;->onFocusAreaChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "FocusView"

    const-string v1, "clear..."

    .line 812
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 813
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    .line 820
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    const/16 p1, 0x8

    .line 405
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isDragged()Z
    .locals 0

    .line 993
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    return p0
.end method

.method public isEvAdjusted()Z
    .locals 1

    .line 983
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEvAdjustedTime()Z
    .locals 7

    .line 987
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v5, 0x5dc

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isManualSplitMode()Z
    .locals 1

    .line 997
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1459
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1460
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1461
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    .line 1462
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1464
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 1465
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 896
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eq v0, v1, :cond_2

    .line 910
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 912
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 913
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 914
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 917
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 918
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_5

    .line 923
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 924
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 925
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 926
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 927
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 929
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 930
    iget p0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_5

    .line 931
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 876
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 880
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 881
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 882
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 884
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    .line 885
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p4, p2, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iget-object p5, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 884
    invoke-virtual {p1, p2, p5}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    .line 887
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    if-ne p4, p2, :cond_1

    move p3, p4

    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 887
    invoke-virtual {p1, p3, p0}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mDownStartTime:J

    .line 550
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mDownStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/camera/ui/FocusView;->mDownStartTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 551
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-eq v5, v6, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-nez v0, :cond_3

    return v4

    .line 556
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v5, 0xa1

    invoke-virtual {v0, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 557
    iget v5, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v7, 0x3

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v7, v0, :cond_4

    return v4

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 564
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_5

    .line 566
    iget-boolean v5, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v5, :cond_5

    .line 567
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 572
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)Z

    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v1, v5, :cond_6

    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v7, p1, :cond_a

    .line 576
    :cond_6
    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mDownStartTime:J

    .line 577
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz p1, :cond_7

    .line 578
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->trackEvAdjusted()V

    .line 579
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    .line 582
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {p1, v2, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 585
    :cond_7
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz p1, :cond_8

    .line 586
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    .line 588
    :cond_8
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne p1, v6, :cond_9

    .line 589
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateFocusArea()V

    .line 590
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    .line 592
    :cond_9
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 593
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 595
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_a

    .line 596
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_a
    if-nez v0, :cond_c

    .line 601
    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    move v1, v4

    :cond_c
    :goto_1
    return v1
.end method

.method public reInit()V
    .locals 6

    const-string v0, "FocusView"

    const-string v1, "onCameraOpen>> reInit"

    .line 640
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 646
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 647
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    if-eqz v1, :cond_6

    if-ne v1, v2, :cond_1

    goto/16 :goto_3

    .line 652
    :cond_1
    new-instance v3, Lcom/android/camera/ui/FloatSlideAdapter;

    .line 653
    sget v4, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    sub-int v5, v1, v2

    int-to-float v5, v5

    div-float v4, v5, v4

    :goto_0
    invoke-direct {v3, v2, v1, v4}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpen: adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_3

    return-void

    .line 659
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 661
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    .line 662
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    .line 664
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 668
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 673
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView;->setEvAdjustable(Z)V

    .line 675
    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    .line 678
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_2

    .line 680
    :cond_5
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 682
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_6
    :goto_3
    return-void
.end method

.method public releaseListener()V
    .locals 1

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 4

    .line 964
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    .line 968
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 969
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    .line 970
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setEvAdjustVisible(I)V

    goto :goto_2

    .line 974
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    :goto_2
    if-nez p1, :cond_5

    .line 977
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 979
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFocusType(Z)V
    .locals 0

    .line 724
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 703
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    if-eq p2, p1, :cond_0

    .line 704
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    .line 705
    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setOrientation(I)V

    .line 706
    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setOrientation(I)V

    .line 707
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 3

    .line 1012
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    int-to-float v0, p2

    .line 1015
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, p3

    .line 1016
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1017
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1018
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 1021
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    .line 1022
    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object p3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 1023
    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object p3, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {p3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    iput p3, p2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 1024
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    .line 1026
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 1032
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa9

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    if-eqz p1, :cond_3

    .line 1034
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->resetEvValue()V

    .line 1041
    :cond_3
    :goto_1
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz p1, :cond_4

    .line 1042
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    :cond_4
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 715
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 716
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    .line 717
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_0

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public showFail()V
    .locals 4

    .line 798
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    const-string v0, "FocusView"

    const-string v1, "showFail..."

    .line 799
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 802
    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    const/4 v0, 0x3

    .line 803
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 804
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 805
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public showStart()V
    .locals 4

    const-string v0, "FocusView"

    const-string v1, "showStart..."

    .line 738
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    const/4 v0, 0x1

    .line 740
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 741
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 742
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 744
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 747
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startTouchDownAnimation()V

    .line 749
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 750
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 751
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 753
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/4 v0, 0x0

    .line 754
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x0

    .line 755
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    .line 757
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 759
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showSuccess()V
    .locals 6

    const-string v0, "FocusView"

    const-string v1, "showSuccess..."

    .line 768
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 772
    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 773
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 775
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_1

    return-void

    .line 785
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    const v2, 0x7f0f014e

    .line 786
    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/FocusView;->showTipMessage(II)V

    .line 787
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 789
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 791
    :cond_3
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    return-void
.end method

.method public updateFocusMode()V
    .locals 1

    .line 635
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 636
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
