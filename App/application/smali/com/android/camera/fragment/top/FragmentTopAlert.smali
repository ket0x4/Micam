.class public Lcom/android/camera/fragment/top/FragmentTopAlert;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopAlert.java"


# instance fields
.field private final HINT_DELAY_TIME:I

.field private mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

.field private mAiSceneSwitchHintText:Landroid/widget/TextView;

.field private mAlertAiSceneSwitchHintTime:J

.field private mAlertAiSceneSwitchHintTopMargin:I

.field private mAlertImageType:I

.field private mAlertImageView:Landroid/widget/ImageView;

.field private mAlertLiearLayout:Landroid/widget/LinearLayout;

.field private mAlertRecordingText:Landroid/widget/TextView;

.field private mAlertStatusValue:Landroid/widget/TextView;

.field private mBlingAnimation:Landroid/view/animation/AlphaAnimation;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mSelectorTopMargin:I

.field private mShow:Z

.field private mStateValueText:Ljava/lang/String;

.field public final mViewHideRunnable:Ljava/lang/Runnable;

.field private showAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const-string v0, ""

    .line 115
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    const/16 v0, 0x7d0

    .line 293
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->HINT_DELAY_TIME:I

    .line 295
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$1;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->showAction:Ljava/lang/Runnable;

    .line 360
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$2;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mViewHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)I
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getViewBottom(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->transViewAnim(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/top/FragmentTopAlert;)I
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertImageBottom()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/top/FragmentTopAlert;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSelectorTopMargin:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/top/FragmentTopAlert;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiSceneSwitchHintTopMargin:I

    return p0
.end method

.method private customTransition()Landroid/animation/LayoutTransition;
    .locals 6

    .line 218
    new-instance p0, Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 220
    new-instance v0, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x0

    .line 221
    invoke-virtual {p0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v4, 0xc8

    .line 222
    invoke-virtual {p0, v1, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 225
    new-instance v0, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 226
    invoke-virtual {p0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 227
    invoke-virtual {p0, v1, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 230
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 231
    invoke-virtual {p0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 232
    invoke-virtual {p0, v1, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 235
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 236
    invoke-virtual {p0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 237
    invoke-virtual {p0, v1, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 240
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 241
    invoke-virtual {p0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 242
    invoke-virtual {p0, v1, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 244
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-object p0
.end method

.method private getAlertImageBottom()I
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 503
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    .line 504
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 505
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700f8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getChildMeasureHeight(Landroid/view/View;)I
    .locals 0

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    if-lez p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 530
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 531
    invoke-virtual {p1, p0, p0}, Landroid/view/View;->measure(II)V

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private getUpdateZoom()Ljava/lang/String;
    .locals 3

    .line 548
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 554
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v1

    .line 555
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-object v0

    .line 558
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x64

    if-le p0, v1, :cond_2

    .line 560
    div-int/lit8 p0, p0, 0xa

    .line 561
    div-int/lit8 v0, p0, 0xa

    .line 562
    rem-int/lit8 p0, p0, 0xa

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private getViewBottom(Landroid/view/View;)I
    .locals 2

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 514
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 517
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getChildMeasureHeight(Landroid/view/View;)I

    move-result v1

    .line 519
    :cond_1
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    .line 521
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 522
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private setAlertImageVisible(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    .line 462
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 464
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertImageBottom()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->transViewAnim(Landroid/view/View;I)V

    .line 465
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertImageBottom()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->transViewAnim(Landroid/view/View;I)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 469
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 472
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->transViewAnim(Landroid/view/View;I)V

    .line 473
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 474
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getViewBottom(Landroid/view/View;)I

    move-result p2

    .line 473
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->transViewAnim(Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setViewMargin(Landroid/view/View;I)V
    .locals 0

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 481
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 482
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 483
    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    const/4 p0, 0x0

    .line 484
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private transViewAnim(Landroid/view/View;I)V
    .locals 0

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 491
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p2, p0

    .line 492
    new-instance p0, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    const/16 p1, 0x64

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 492
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public alertAiSceneSelector(IILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V
    .locals 5

    if-nez p1, :cond_1

    .line 319
    iput p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSelectorTopMargin:I

    const-wide/16 p1, 0x7d0

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiSceneSwitchHintTime:J

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 321
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->showAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v2

    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/CompoundButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->showAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 324
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 325
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 326
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 327
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 329
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 331
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertImageBottom()I

    move-result p2

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 333
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getViewBottom(Landroid/view/View;)I

    move-result p2

    .line 330
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->transViewAnim(Landroid/view/View;I)V

    .line 336
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ToggleSwitch;->setChecked(Z)V

    .line 337
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {p0, p3}, Lcom/android/camera/ui/ToggleSwitch;->setOnCheckedChangeListener(Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V

    return-void
.end method

.method public alertAiSceneSwitchHint(II)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    .line 342
    iput p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiSceneSwitchHintTopMargin:I

    if-nez p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    const p2, 0x7f0f027d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    const p2, 0x7f0f027c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 348
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 350
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    const p2, 0x8000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 351
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getViewBottom(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->transViewAnim(Landroid/view/View;I)V

    .line 355
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiSceneSwitchHintTime:J

    .line 356
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 357
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mViewHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public alertFlash(IIZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_4

    if-eqz p3, :cond_0

    move v0, v1

    .line 273
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    if-ne v1, v0, :cond_1

    return-void

    .line 276
    :cond_1
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 277
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_3

    const p3, 0x7f080088

    goto :goto_0

    :cond_3
    const p3, 0x7f080087

    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 283
    :cond_4
    iget p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    if-eq p3, v1, :cond_5

    if-eq p3, v0, :cond_5

    return-void

    :cond_5
    const/4 p3, -0x1

    .line 286
    iput p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 288
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAlertImageVisible(II)V

    return-void
.end method

.method public alertHDR(IIZ)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-nez p1, :cond_3

    if-eqz p3, :cond_0

    move v0, v1

    .line 255
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    if-ne v1, v0, :cond_1

    return-void

    .line 258
    :cond_1
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 259
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    const p3, 0x7f08008a

    goto :goto_0

    :cond_2
    const p3, 0x7f080089

    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 261
    :cond_3
    iget p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    if-eq p3, v1, :cond_4

    if-eq p3, v0, :cond_4

    return-void

    :cond_4
    const/4 p3, -0x1

    .line 264
    iput p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 266
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAlertImageVisible(II)V

    return-void
.end method

.method public alertUpdateValue(II)V
    .locals 2

    const-string p1, ""

    .line 373
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    .line 376
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p1, :cond_0

    .line 377
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getUpdateZoom()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 408
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    .line 409
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 410
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getViewBottom(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 412
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertImageBottom()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    goto :goto_0

    .line 413
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 414
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getViewBottom(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    goto :goto_0

    .line 416
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    .line 418
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 422
    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public clear()V
    .locals 2

    const-string v0, ""

    .line 434
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    const/4 v0, -0x1

    .line 435
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 436
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 446
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public clearAlertStatus()V
    .locals 2

    const-string v0, ""

    .line 451
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStateValueText:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 453
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfd

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0022

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09000d

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageView:Landroid/widget/ImageView;

    const v0, 0x7f09000e

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const v0, 0x7f09000f

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertStatusValue:Landroid/widget/TextView;

    const v0, 0x7f09000a

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ToggleSwitch;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    const v0, 0x7f090009

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSwitchHintText:Landroid/widget/TextView;

    const v0, 0x7f0900e9

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertLiearLayout:Landroid/widget/LinearLayout;

    .line 131
    sget-boolean p1, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    sget v0, Lcom/android/camera/Util;->sStatusBarHeight:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewMargin(Landroid/view/View;I)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 135
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertLiearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 137
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public isShow()Z
    .locals 0

    .line 430
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShow:Z

    return p0
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear()V

    const/4 p1, 0x1

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 4

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    goto/16 :goto_1

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez p1, :cond_2

    .line 202
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    .line 203
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 204
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 205
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 206
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 207
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_4

    .line 196
    invoke-virtual {p1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 198
    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 181
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_6

    goto :goto_0

    .line 185
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const-string v0, "00:00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const-string v0, "00:10"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_1
    return-void
.end method

.method public setShow(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShow:Z

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 159
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
