.class public Lcom/android/camera/fragment/FragmentBottomPopupTips;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentBottomPopupTips"


# instance fields
.field private mBeautyIntroButton:Landroid/view/View;

.field private mBeautyIntroRadius:I

.field private mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

.field private mBeautyIntroText:Landroid/widget/TextView;

.field private mBeautyIntroWidth:I

.field private mCenterTipImage:Landroid/widget/ImageView;

.field private mCurrentTipMessage:I

.field private mCurrentTipType:I

.field private mHandler:Landroid/os/Handler;

.field private mLastTipMessage:I

.field private mLastTipType:I

.field private mLeftTipImage:Landroid/widget/ImageView;

.field private mPortraitSuccessHint:Landroid/view/View;

.field private mQrCodeButton:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mShowBeautyIntro:Z

.field private mSpeedTipImage:Landroid/view/ViewGroup;

.field private mTipImage:Landroid/widget/ImageView;

.field private mTipMessage:Landroid/widget/TextView;

.field private mZoomInOutAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->setBeautyIntroButtonWidth(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    return-object p0
.end method

.method private adjustViewBackground(I)V
    .locals 1

    .line 811
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 815
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    const p1, 0x7f080028

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 820
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    const p1, 0x7f080029

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private hideTip(Landroid/view/View;)Z
    .locals 1

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 553
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideTipBeautyIntro()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 338
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initBeautyIntroAnimator()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 185
    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroWidth:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroRadius:I

    mul-int/2addr v2, v0

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v5, 0x12c

    .line 186
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroText:Landroid/widget/TextView;

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xfa

    .line 188
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    new-instance v5, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;

    invoke-direct {v5, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    .line 196
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    .line 199
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 200
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v1, v3, v2, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private reIntTipViewMarginBottom(Landroid/view/View;)V
    .locals 6

    .line 424
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 427
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    .line 429
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb5

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    .line 432
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xa5

    const v5, 0x7f0700f4

    if-ne v3, v4, :cond_0

    .line 433
    sget p0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, p0

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    .line 434
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v1, p0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 435
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->visibleHeight()I

    move-result v3

    if-lez v3, :cond_1

    .line 436
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->visibleHeight()I

    move-result v1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 438
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 439
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomVisible()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 440
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->visibleHeight()I

    move-result v1

    goto :goto_0

    .line 443
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_4

    const v1, 0x7f090020

    .line 445
    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result p0

    const/16 v1, 0xfc

    if-ne p0, v1, :cond_4

    .line 446
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 448
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 453
    :goto_0
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq p0, v1, :cond_5

    .line 454
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private resetBeautyIntro()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 180
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroWidth:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->setBeautyIntroButtonWidth(I)V

    .line 181
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroText:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private setBeautyIntroButtonWidth(I)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 577
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 578
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startBeautyIntroShowAnimation()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 583
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->resetBeautyIntro()V

    .line 584
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 585
    invoke-static {}, Lcom/android/camera/CameraSettings;->addPopupTipBeautyIntroShowTimes()V

    .line 586
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private trackQRCodeDetected()V
    .locals 1

    const-string p0, "counter"

    const-string v0, "qrcode_detected"

    .line 317
    invoke-static {p0, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTipImage(IILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 590
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 591
    sget-object p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string p1, "Warning: update UI in worker thread. Do nothing"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x4

    const/16 v1, 0xa5

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-eq p1, v1, :cond_4

    const/16 v4, 0xab

    if-eq p1, v4, :cond_2

    packed-switch p1, :pswitch_data_0

    :cond_1
    move v4, v2

    goto :goto_1

    .line 623
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 613
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 615
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    .line 608
    :cond_4
    :pswitch_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v2, :cond_9

    if-eq v4, v5, :cond_8

    if-eq v4, v3, :cond_7

    if-eq v4, v0, :cond_5

    move v9, v6

    move v2, v7

    move v8, v2

    goto :goto_3

    .line 646
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getPortraitZoom()I

    move-result v2

    if-ne v2, v6, :cond_6

    const v2, 0x7f08013e

    goto :goto_2

    :cond_6
    const v2, 0x7f08013d

    goto :goto_2

    :cond_7
    const v2, 0x7f08008b

    const v8, 0x7f0f0008

    move v9, v6

    goto :goto_3

    :cond_8
    const v2, 0x7f08008d

    :goto_2
    move v9, v6

    move v8, v7

    goto :goto_3

    :cond_9
    move v2, v7

    move v8, v2

    move v9, v8

    :goto_3
    if-lez v2, :cond_a

    .line 655
    iget-object v10, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a
    if-lez v8, :cond_b

    .line 657
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 658
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 661
    :cond_b
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 662
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_c

    return-void

    :cond_c
    if-eqz v9, :cond_d

    .line 669
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v8, v8

    invoke-static {v2, v8}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 672
    :cond_d
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-ne v4, v3, :cond_e

    .line 676
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupTipBeautyIntroEnable()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0xa2

    if-eq p1, v2, :cond_e

    const/16 v2, 0xa1

    if-eq p1, v2, :cond_e

    move p1, v6

    goto :goto_4

    :cond_e
    move p1, v7

    :goto_4
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mShowBeautyIntro:Z

    if-nez p3, :cond_10

    if-eqz v9, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    move v7, v6

    goto :goto_6

    :cond_10
    if-eqz v9, :cond_13

    if-ne p2, v1, :cond_12

    .line 687
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v7, v3

    goto :goto_6

    :cond_12
    move v7, v5

    goto :goto_6

    :cond_13
    if-eq p2, v1, :cond_f

    .line 696
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v1, :cond_14

    goto :goto_5

    :cond_14
    move v7, v0

    :goto_6
    if-eqz v7, :cond_1b

    if-eq v7, v6, :cond_19

    if-eq v7, v5, :cond_18

    if-eq v7, v3, :cond_17

    if-eq v7, v0, :cond_15

    goto/16 :goto_7

    .line 724
    :cond_15
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 725
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    .line 726
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 728
    :cond_16
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 732
    :cond_17
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mShowBeautyIntro:Z

    if-nez p1, :cond_1c

    .line 733
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x96

    .line 734
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 735
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 733
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 719
    :cond_18
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mShowBeautyIntro:Z

    if-nez p1, :cond_1c

    .line 720
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 711
    :cond_19
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 712
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    .line 713
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_7

    .line 715
    :cond_1a
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_7

    .line 706
    :cond_1b
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mShowBeautyIntro:Z

    if-nez p1, :cond_1c

    .line 707
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1c
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public containTips(I)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public directlyHideTips()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 466
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 473
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    .line 476
    :cond_2
    iput v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff1

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b000e

    return p0
.end method

.method public hideCenterTipImage()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 797
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public hideLeftTipImage()V
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 779
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public hideQrCodeTip()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 521
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideSpeedTipImage()V
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 788
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mSpeedTipImage:Landroid/view/ViewGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public hideTipImage()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 327
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 146
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    const v0, 0x7f0900a9

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0900a7

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    const v0, 0x7f0900a8

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroText:Landroid/widget/TextView;

    const v0, 0x7f0900ab

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    const v0, 0x7f0900aa

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const v0, 0x7f0900ac

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    .line 156
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 162
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->adjustViewBackground(I)V

    .line 166
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;)V

    .line 168
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroRadius:I

    .line 169
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 170
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 172
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroRadius:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBeautyIntroWidth:I

    .line 174
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->initBeautyIntroAnimator()V

    .line 175
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->resetBeautyIntro()V

    return-void
.end method

.method public isPortraitHintVisible()Z
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    .line 802
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 804
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mShowBeautyIntro:Z

    if-eqz p1, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startBeautyIntroShowAnimation()V

    :cond_0
    const/4 p1, 0x0

    .line 807
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mShowBeautyIntro:Z

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 759
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->adjustViewBackground(I)V

    goto :goto_0

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    .line 769
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 537
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 538
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 539
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 540
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    nop

    :cond_2
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 258
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900a7

    if-eq v0, v1, :cond_3

    const v1, 0x7f0900a9

    if-eq v0, v1, :cond_3

    const p1, 0x7f0900ab

    if-eq v0, p1, :cond_2

    goto/16 :goto_1

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    .line 265
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->trackQRCodeDetected()V

    .line 266
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->show()V

    goto/16 :goto_1

    .line 271
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 272
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTipBeautyIntro()V

    .line 273
    invoke-static {}, Lcom/android/camera/CameraSettings;->setPopupTipBeautyIntroClicked()V

    .line 275
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v3, 0x3

    if-eq p1, v3, :cond_6

    if-eq p1, v1, :cond_4

    goto :goto_1

    .line 294
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc4

    .line 295
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;

    if-eqz p1, :cond_8

    .line 296
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;->portraitZoomSwitching()Z

    move-result v0

    if-nez v0, :cond_8

    .line 297
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getPortraitZoom()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 299
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setPortraitZoom(I)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 302
    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setPortraitZoom(I)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const v1, 0x7f08013e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 306
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;->onPortraitZoomChanged()V

    goto :goto_1

    .line 283
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTipImage()V

    .line 284
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 286
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa2

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_8

    .line 288
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 289
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    goto :goto_1

    .line 278
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTipImage()V

    .line 279
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 563
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 564
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 v1, 0x4

    .line 566
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onBackEvent(I)Z

    const/4 v1, 0x0

    .line 569
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipBottomMargin(IZ)V

    .line 571
    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getFragmentInto()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    .line 746
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 751
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 752
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 753
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reInitTipImage()V
    .locals 2

    .line 343
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 237
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xaf

    .line 238
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 239
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setPortraitHintVisible(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 488
    :goto_0
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    if-nez p1, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;)V

    .line 493
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showQrCodeTip()V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 505
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 507
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public showTips(III)V
    .locals 2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 370
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    return-void

    .line 374
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    .line 375
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:I

    .line 377
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    .line 378
    iput p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:I

    .line 380
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 382
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;)V

    .line 383
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 384
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 385
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 386
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    iget p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:I

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 387
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    new-instance p2, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eq p3, p2, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x3a98

    goto :goto_0

    :cond_3
    const/16 p1, 0x1388

    goto :goto_0

    :cond_4
    const/16 p1, 0x3e8

    .line 411
    :goto_0
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-lez p1, :cond_5

    .line 413
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 244
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xaf

    .line 246
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 247
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateTipBottomMargin(IZ)V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    int-to-float v1, p1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-eqz p2, :cond_2

    int-to-float p2, p1

    .line 353
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 354
    new-instance p2, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-direct {p2, p0, p1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p2, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 356
    :cond_1
    new-instance p2, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-direct {p2, p0, p1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 359
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->directSetResult(Landroid/view/View;I)V

    :goto_0
    return-void
.end method
