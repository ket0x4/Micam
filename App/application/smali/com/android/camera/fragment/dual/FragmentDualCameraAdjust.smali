.class public Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$DualController;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;


# instance fields
.field private mCurrentState:I

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mDualParentLayout:Landroid/view/ViewGroup;

.field private mDualZoomButton:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalSlideLayout:Landroid/view/ViewGroup;

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mIsHiding:Z

.field private mPassTouchFromZoomButtonToSlide:Z

.field private mSlideLayoutHeight:I

.field private mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

.field private mSnapStyle:Landroid/text/style/TextAppearanceSpan;

.field private mStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomInOutAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;

.field private mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

.field private mZoomRatio:I

.field private mZoomRatioTele:I

.field private mZoomRatioWide:I

.field private mZoomRequestAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    .line 105
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$1;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$2;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->sendHideMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;IZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Lcom/android/camera/ui/HorizontalSlideView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 0

    const p0, 0x7f06001f

    .line 688
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private initSlideZoomView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 3

    .line 579
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    .line 580
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnPositionSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;)V

    .line 581
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/HorizontalSlideView;->setJustifyEnabled(Z)V

    .line 582
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V

    .line 584
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result p1

    .line 585
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 591
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mapZoomRatioToPosition(I)F

    move-result p1

    .line 592
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(F)V

    return-void
.end method

.method private notifyTipsMargin(I)V
    .locals 1

    .line 638
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v0, 0x1

    .line 639
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipBottomMargin(IZ)V

    return-void
.end method

.method private notifyZoomAnimationStart()V
    .locals 1

    .line 521
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xae

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz p0, :cond_0

    .line 523
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualLensNotifyToTele()V

    :cond_0
    return-void
.end method

.method private requestZoomRatio(IZ)V
    .locals 1

    .line 652
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_0

    .line 653
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CameraModule"

    const-string p1, "Camera is taking picture, ignore request."

    .line 654
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 658
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xae

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz p0, :cond_1

    .line 660
    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualZoomValueChanged(IZ)V

    :cond_1
    return-void
.end method

.method private resetZoomIcon()V
    .locals 2

    .line 235
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    .line 239
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    .line 242
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    .line 244
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->setZoomText()V

    return-void
.end method

.method private sendHideMessage()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setZoomText()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 275
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    div-int/lit8 v0, v0, 0xa

    .line 276
    div-int/lit8 v1, v0, 0xa

    .line 277
    rem-int/lit8 v0, v0, 0xa

    const/16 v2, 0x21

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 283
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0f0026

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    aput-object v3, v1, v5

    invoke-virtual {p0, v4, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    const-string v3, "X"

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 288
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showSlideView()V
    .locals 3

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    .line 597
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->setEnable(Z)V

    .line 598
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 599
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 600
    new-instance v1, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 601
    invoke-virtual {v1, v2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 600
    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 603
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 604
    new-instance v1, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v0, Lmiui/view/animation/BackEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/BackEaseOutInterpolator;-><init>()V

    .line 605
    invoke-virtual {v1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 604
    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 607
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->notifyTipsMargin(I)V

    return-void
.end method

.method private toggle()V
    .locals 3

    .line 529
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    .line 531
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xae

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v1, :cond_0

    .line 533
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V

    .line 534
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomValue()V

    .line 537
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v2, "wide"

    .line 539
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1x"

    goto :goto_0

    :cond_1
    const-string v0, "2x"

    .line 538
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->trackDualZoomChanged(ILjava/lang/String;)V

    return-void
.end method

.method private trackDualZoomChanged(ILjava/lang/String;)V
    .locals 1

    .line 544
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 547
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 548
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6a21\u5f0f"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\u53d8\u7126"

    .line 549
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string p2, "dual_zoom_changed"

    .line 550
    invoke-static {p1, p2, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff4

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0012

    return p0
.end method

.method public hideSlideView()V
    .locals 4

    .line 612
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    .line 616
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->setEnable(Z)V

    .line 617
    new-instance v0, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    invoke-direct {v0, v2, v3}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 618
    invoke-virtual {v0, v2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 617
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v2, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$5;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$5;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    .line 618
    invoke-virtual {v0, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    .line 628
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 629
    new-instance v0, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    invoke-direct {v0, v2, v3}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 630
    invoke-virtual {v0, v2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 629
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 632
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->notifyTipsMargin(I)V

    return-void
.end method

.method public hideZoomButton()V
    .locals 2

    .line 313
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 316
    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    .line 317
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 140
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v0, 0x7f09003b

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f090038

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    const v0, 0x7f09003a

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    .line 149
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    const v0, 0x7f090039

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    .line 150
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomPopupTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100042

    invoke-direct {p1, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 155
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100043

    invoke-direct {p1, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 156
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f039b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    .line 157
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f039a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    .line 159
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f020008

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    .line 160
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f020004

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    .line 171
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lmiui/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f020003

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    .line 174
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 175
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f020005

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    .line 177
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 182
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float v1, p1, v1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    .line 185
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->adjustViewBackground(Landroid/view/View;I)V

    .line 186
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->provideAnimateElement(ILjava/util/List;)V

    .line 188
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;-><init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isZoomVisible()Z
    .locals 2

    .line 295
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 675
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->adjustViewBackground(Landroid/view/View;I)V

    .line 682
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 462
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 466
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 470
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mIsHiding:Z

    if-eqz p1, :cond_2

    return v0

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->hideSlideView()V

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 481
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 484
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090038

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 488
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 490
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "Camera is taking picture, ignore event."

    .line 491
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 494
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 495
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->toggle()V

    goto :goto_0

    .line 497
    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    .line 498
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v0, "2x"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->trackDualZoomChanged(ILjava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v0, v1, [I

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 500
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 501
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->notifyZoomAnimationStart()V

    goto :goto_0

    .line 502
    :cond_4
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    const-string v4, "1x"

    if-gt p1, v0, :cond_5

    .line 503
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v4}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->trackDualZoomChanged(ILjava/lang/String;)V

    .line 504
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    new-array v0, v1, [I

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 505
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 507
    :cond_5
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v4}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->trackDualZoomChanged(ILjava/lang/String;)V

    .line 508
    iget p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    invoke-direct {p0, p1, v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(IZ)V

    .line 509
    iget p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    invoke-direct {p0, p1, v3}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(IZ)V

    .line 513
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x5

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onBackEvent(I)Z

    :goto_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 556
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 559
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090038

    if-eq p1, v0, :cond_1

    return v1

    .line 562
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 563
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "CameraModule"

    const-string p1, "Camera is taking picture, ignore long click event."

    .line 564
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 567
    :cond_2
    new-instance p1, Lcom/android/camera/data/data/config/ComponentManuallyDualZoom;

    .line 568
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyDualZoom;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    .line 569
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initSlideZoomView(Lcom/android/camera/data/data/ComponentData;)V

    .line 570
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->showSlideView()V

    .line 571
    iput-boolean v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mPassTouchFromZoomButtonToSlide:Z

    return v0
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 644
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 647
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->requestZoomRatio(IZ)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 387
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 388
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/16 v1, 0xa3

    const/16 v2, 0xa5

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_1

    const/16 v1, 0xa6

    if-eq p1, v1, :cond_0

    move v1, v3

    goto :goto_1

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v5, v5

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 396
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    move v1, v4

    :goto_1
    if-ne v1, v4, :cond_2

    const/4 v5, 0x4

    .line 405
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onBackEvent(I)Z

    .line 407
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    if-ne v5, v4, :cond_2

    move v1, v3

    .line 413
    :cond_2
    iget v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    if-ne v5, v1, :cond_4

    if-ne v1, v4, :cond_3

    .line 415
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->resetZoomIcon()V

    :cond_3
    return-void

    .line 419
    :cond_4
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/16 v5, 0x50

    if-eq v1, v3, :cond_a

    if-eq v1, v4, :cond_5

    goto/16 :goto_4

    .line 423
    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 424
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 426
    :cond_6
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 427
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 428
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->resetZoomIcon()V

    if-eqz p2, :cond_9

    const/16 v1, 0xa7

    if-ne p1, v2, :cond_7

    if-eq v0, v1, :cond_7

    goto :goto_2

    :cond_7
    if-ne v0, v1, :cond_8

    .line 433
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x96

    .line 434
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 433
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 436
    :cond_8
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 430
    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_4

    .line 442
    :cond_a
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    if-nez p2, :cond_b

    .line 444
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 446
    :cond_b
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualParentLayout:Landroid/view/ViewGroup;

    invoke-direct {p1, p0, v5}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    if-eqz p2, :cond_e

    if-ne v0, v2, :cond_d

    goto :goto_3

    .line 452
    :cond_d
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 450
    :cond_e
    :goto_3
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_4
    return-void
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

    .line 666
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 667
    iget-object p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 668
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 350
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb6

    .line 352
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 354
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 356
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb8

    .line 357
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10002f

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 728
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v2, 0x21

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 729
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSnapNumVisible(Z)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-eqz p1, :cond_1

    .line 707
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->hideSlideView()V

    .line 710
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 716
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 717
    invoke-virtual {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->updateZoomValue()V

    :goto_0
    return-void
.end method

.method public showZoomButton()V
    .locals 2

    .line 322
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 325
    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    .line 326
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 363
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 365
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 367
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 369
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb8

    .line 370
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    return-void
.end method

.method public updateZoomValue()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 251
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    .line 255
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v0

    .line 259
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_2

    .line 261
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRequestAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatio:I

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioWide:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mZoomRatioTele:I

    if-ne v0, v1, :cond_4

    .line 268
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->setZoomText()V

    :cond_4
    return-void
.end method

.method public visibleHeight()I
    .locals 2

    .line 300
    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mHorizontalSlideLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iget p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mSlideLayoutHeight:I

    return p0

    .line 308
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->mDualZoomButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    return p0
.end method
