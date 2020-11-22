.class public Lcom/android/camera/ui/V6ShutterButtonInternal;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ShutterButtonInternal.java"


# static fields
.field private static LONG_PRESSED_TRIGGER_TIME:I = 0x0

.field private static final OUTER_CIRCLE_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "V6ShutterButtonInternal"


# instance fields
.field private FLING_DISTANCE_THRESHOLD:I

.field private FLING_VELOCITY_THRESHOLD:I

.field private mActionDown:Z

.field private mAnimationType:I

.field private mBigRadius:F

.field private mCameraOpened:Z

.field private mCenterMaxRadius:F

.field private mCenterMinRadius:F

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mCenterPath:Landroid/graphics/Path;

.field private mCenterRadius:F

.field private mCenterThresholdRadius:F

.field private mCenterX:I

.field private mCenterY:I

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mIncreaseFlag:Z

.field private mIsVideo:Z

.field private mLongClickable:Z

.field private mOutTime:J

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mShutterRect:Landroid/graphics/Rect;

.field private mStartTime:J

.field private mTargetImage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->OUTER_CIRCLE_WIDTH:I

    const/16 v0, 0x1f4

    .line 39
    sput v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->LONG_PRESSED_TRIGGER_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    const/high16 p1, 0x41a80000    # 21.0f

    .line 49
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_VELOCITY_THRESHOLD:I

    const/high16 p1, 0x43c80000    # 400.0f

    .line 50
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_DISTANCE_THRESHOLD:I

    const-wide/16 p1, -0x1

    .line 52
    iput-wide p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    .line 68
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    .line 72
    new-instance p2, Lcom/android/camera/ui/V6ShutterButtonInternal$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/V6ShutterButtonInternal$1;-><init>(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    iput-object p2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;->enablePressFilter(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onLongPress()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6ShutterButtonInternal;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6ShutterButtonInternal;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->animationDone()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/ui/V6ShutterButtonInternal;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6ShutterButtonInternal;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6ShutterButtonInternal;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V6ShutterButtonInternal;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6ShutterButtonInternal;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private animationDone()V
    .locals 4

    .line 350
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mTargetImage:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/TwoStateImageView;->setPressed(Z)V

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setPressed(Z)V

    .line 361
    :goto_0
    iput v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    return-void
.end method

.method private checkGesture(II)V
    .locals 5

    .line 280
    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    .line 286
    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 289
    sget-object v2, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gesture d2(d*d)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    .line 292
    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_VELOCITY_THRESHOLD:I

    div-int v1, v0, v1

    if-le v2, v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_DISTANCE_THRESHOLD:I

    if-ge v1, v0, :cond_3

    .line 294
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    .line 295
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 294
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_3
    return-void
.end method

.method private doAnimate(IJ)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->animationDone()V

    .line 326
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    .line 327
    iget p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    const v0, 0x3f67c1be    # 0.9053f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 335
    :cond_2
    iget p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    const v0, 0x3ef14e3c    # 0.4713f

    mul-float/2addr p1, v0

    .line 336
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    .line 337
    iget p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    sub-float/2addr v0, p1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterThresholdRadius:F

    goto :goto_1

    .line 330
    :cond_3
    iget p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    const v0, 0x3f5094c4

    mul-float/2addr p1, v0

    .line 331
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    .line 332
    iget p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    .line 341
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mStartTime:J

    .line 342
    iput-wide p2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mDuration:J

    .line 343
    iget-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIncreaseFlag:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMaxRadius:F

    :goto_2
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    .line 344
    iget-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private onClick()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const v2, 0x7f090110

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 111
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const v2, 0x7f090110

    const/4 v3, 0x2

    move-object v4, p1

    move-object v5, p2

    .line 134
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onFocused(Z)V
    .locals 8

    .line 121
    sget-object v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocused  mMessageDispatcher+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    const v4, 0x7f090110

    const/4 v5, 0x2

    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    .line 123
    invoke-interface/range {v2 .. v7}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onLongPress()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const v2, 0x7f090110

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 100
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 209
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCameraOpened:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    sget-object p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent: drop event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const-wide/16 v4, 0xc8

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_a

    const-wide/16 v8, -0x1

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_1

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    const/4 v6, 0x6

    if-eq v0, v6, :cond_3

    goto/16 :goto_7

    .line 265
    :cond_1
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 266
    iput-wide v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto/16 :goto_7

    .line 267
    :cond_2
    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    cmp-long p1, v0, v8

    if-nez p1, :cond_e

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto/16 :goto_7

    .line 223
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-nez p1, :cond_e

    .line 224
    iget-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v1

    goto :goto_1

    :cond_5
    :goto_0
    move p1, v7

    .line 225
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-eqz p1, :cond_6

    .line 227
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v0

    if-nez v0, :cond_6

    .line 228
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onClick()V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 229
    iget-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-nez p1, :cond_7

    float-to-int p1, v2

    float-to-int v0, v3

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->checkGesture(II)V

    .line 233
    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-nez p1, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result p1

    if-nez p1, :cond_9

    .line 234
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    .line 237
    :cond_8
    invoke-direct {p0, v7, v4, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->doAnimate(IJ)V

    goto :goto_4

    .line 235
    :cond_9
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setPressed(Z)V

    .line 239
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFocused(Z)V

    .line 240
    iput-wide v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    .line 241
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    goto :goto_7

    .line 246
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 247
    iget-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mIsVideo:Z

    if-nez p1, :cond_c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result p1

    if-nez p1, :cond_c

    .line 248
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    .line 251
    :cond_b
    invoke-direct {p0, v6, v4, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->doAnimate(IJ)V

    goto :goto_6

    .line 249
    :cond_c
    :goto_5
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/TwoStateImageView;->setPressed(Z)V

    .line 253
    :goto_6
    iput-boolean v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mActionDown:Z

    .line 254
    invoke-direct {p0, v7}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFocused(Z)V

    .line 255
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 256
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onClick()V

    .line 258
    :cond_d
    iget-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    if-eqz p1, :cond_e

    .line 259
    iget-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    sget p1, Lcom/android/camera/ui/V6ShutterButtonInternal;->LONG_PRESSED_TRIGGER_TIME:I

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    :goto_7
    return v7
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 365
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    if-nez v0, :cond_0

    .line 366
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 368
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    if-nez v0, :cond_1

    .line 369
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    .line 370
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    .line 373
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mBigRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 376
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mAnimationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterThresholdRadius:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0x3f35c28f    # 0.71f

    mul-float/2addr v2, v0

    .line 380
    iget v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v4, v3

    sub-float/2addr v4, v2

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 382
    iget v5, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v6, v5

    sub-float/2addr v6, v2

    int-to-float v5, v5

    add-float/2addr v5, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    .line 385
    iget v9, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterMinRadius:F

    sub-float/2addr v0, v9

    mul-float/2addr v0, v8

    sub-float/2addr v1, v9

    div-float/2addr v0, v1

    add-float/2addr v0, v7

    mul-float/2addr v2, v0

    .line 388
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 389
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v1, v1

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    invoke-virtual {v0, v1, v7, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 391
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v7, v7

    invoke-virtual {v0, v1, v7, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 377
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterRadius:F

    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    return-void
.end method
