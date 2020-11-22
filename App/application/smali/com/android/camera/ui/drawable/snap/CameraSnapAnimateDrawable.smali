.class public Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraSnapAnimateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;
    }
.end annotation


# static fields
.field private static final mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mCameraUpSplashConfig:Lcom/facebook/rebound/SpringConfig;

.field public static final mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field private lastAngle:F

.field private mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

.field private mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

.field private mModeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

.field private mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

.field private mRingAnimator:Landroid/animation/ValueAnimator;

.field private mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

.field private mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

.field private mTimeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 625
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraDownConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    .line 630
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v2

    sput-object v2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide v2, 0x4066800000000000L    # 180.0

    .line 632
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordScaleConfig:Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 634
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpSplashConfig:Lcom/facebook/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->lastAngle:F

    .line 692
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$14;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$14;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mLongPressIncreaseListener:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

    .line 45
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    .line 46
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    .line 47
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    .line 48
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-object p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 794
    iput-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 798
    iput-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->drawCanvas(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public hideRoundPaintItem()V
    .locals 1

    .line 803
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public initMode(I)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initTargetValues(I)V

    .line 53
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 54
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 55
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 56
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    return-void
.end method

.method public initTargetValues(I)V
    .locals 11

    const/16 v0, 0xa1

    const v1, 0x3f3020c5    # 0.688f

    const v2, -0x1abd1

    const/high16 v3, 0x41700000    # 15.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f400000    # 0.75f

    const v6, 0x3f553f7d    # 0.833f

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa8

    const v10, 0x3f181062    # 0.594f

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xac

    if-eq p1, v0, :cond_0

    .line 551
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v5, v9, v0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 552
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v1, v9, v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 553
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v6, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 554
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v6, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_0

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v9, v8, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 596
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const v0, 0x3f0ccccd    # 0.55f

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v0, v9, v1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 597
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    const v1, 0x3f404189    # 0.751f

    invoke-virtual {p1, v1, v9, v0, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 599
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v8}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->setNeedSpacing(Z)V

    .line 600
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v1, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto/16 :goto_0

    .line 580
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v9, v8, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 581
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v10, v2, v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 582
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v6, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 583
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    sget p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {p0, v6, v9, p1, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v9, v8, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 573
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v10, v2, v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 574
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {p1, v6, v9, v0, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 576
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v6, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 565
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v9, v0, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 566
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 567
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v6, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 568
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v6, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 588
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v5, v9, v0, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 589
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 590
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p1, v6, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 591
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v6, v9, v8, v7}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    :goto_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 620
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public pauseRecording()V
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public prepareRecording(I)V
    .locals 4

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xac

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    iget v3, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 286
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    iget v3, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 275
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 292
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 293
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 296
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    .line 293
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 297
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    goto :goto_0

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 305
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    .line 302
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 306
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->prepareRecord()V

    .line 311
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 313
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 314
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 315
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$6;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$6;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public resumeRecording()V
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setWidthHeight(FF)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    .line 62
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v0

    .line 64
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p2, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 65
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {p2, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 66
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mSecondPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    invoke-virtual {p2, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    .line 67
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mMotionPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    return-void
.end method

.method public showRoundPaintItem()V
    .locals 1

    .line 807
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startModeChangeAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 119
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 136
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mModeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startRecord(I)V
    .locals 5

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    const/16 v0, 0xa1

    if-ne p1, v0, :cond_0

    const/16 v1, 0x3a98

    goto :goto_0

    :cond_0
    const/16 v1, 0xac

    if-ne p1, v1, :cond_1

    const/16 v1, 0xdac

    goto :goto_0

    :cond_1
    const/16 v1, 0x2710

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 342
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 343
    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 344
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$7;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 358
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eq p1, v0, :cond_2

    .line 384
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 385
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 388
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startRecordAnimation(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(I)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->stopRecord(I)V

    :goto_0
    return-void
.end method

.method public startRingAnimation()V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setRingVisible(I)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 219
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$5;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startScaleDownAnimation()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    const v4, 0x3f2209ab

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 148
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 165
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 p1, 0xc8

    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    new-instance p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$3;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    new-instance p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_0

    .line 203
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 207
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

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

.method public stopRecord(I)V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 411
    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 412
    iget v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->lastAngle:F

    .line 414
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    const/16 v0, 0xa1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    .line 432
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    iget v3, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentStrokeWidth:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v2, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    .line 421
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    .line 418
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingPaint:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v2, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    .line 428
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    .line 425
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    :goto_0
    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 440
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 441
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 442
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$9;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$9;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 453
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 454
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, p1, [F

    .line 481
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 482
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 483
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$11;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$11;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 494
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

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
.end method

.method public stopRingAnimation()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRingAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setRingVisible(I)V

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 243
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
