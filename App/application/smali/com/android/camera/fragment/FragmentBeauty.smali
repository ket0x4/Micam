.class public Lcom/android/camera/fragment/FragmentBeauty;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBeauty.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;
.implements Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;,
        Lcom/android/camera/fragment/FragmentBeauty$SubTab;,
        Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;,
        Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/ImageView;

.field private mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

.field private mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field private mPendingShowTipsView:Z

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/FragmentBeauty$SubTab;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleView:Lcom/android/camera/ui/BeautyTitleView;

.field private mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentBeauty;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->animateExpanding(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/BeautyTitleView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    return-object p0
.end method

.method private animateExpanding(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 417
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->expand()V

    goto :goto_0

    .line 419
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {p0}, Lcom/android/camera/ui/BeautyTitleView;->shrink()V

    :goto_0
    return-void
.end method

.method private hideAdvance()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$6;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$6;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private init3DFaceBeautyTabs()V
    .locals 7

    .line 323
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v2, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v3, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    const v4, 0x7f0f0069

    const-string v5, "beauty_level_button"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->onlyShowMainTab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v2, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const v3, 0x7f0f006b

    const-class v4, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    const-string v5, "beauty_makeup_button"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    new-instance v6, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY3D:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const v2, 0x7f0f006a

    const-class v3, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    const/4 v4, 0x1

    const-string v5, "beauty_3d_makeup_button"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;ZLjava/lang/String;)V

    invoke-static {v6}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private initBeautyTitleViews(Lcom/android/camera/ui/BeautyTitleView;)V
    .locals 2

    .line 238
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBeauty$4;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/BeautyTitleView;->setAdapter(Lcom/android/camera/ui/BeautyTitleView$Adapter;)V

    .line 259
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/BeautyTitleView;->setTitleClickListener(Lcom/android/camera/ui/BeautyTitleView$OnTitleClickListener;)V

    .line 261
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautySwitch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 263
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/BeautyTitleView;->setActiveIdx(I)V

    .line 264
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->hideAdvance()V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 269
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/BeautyTitleView;->setActiveIdx(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initFaceBeautyTabs()V
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v2, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v3, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    const v4, 0x7f0f006c

    const-string v5, "beauty_level_button"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->onlyShowMainTab()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportFaceBeautyMakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->BEAUTY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const v2, 0x7f0f006d

    const-class v3, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    const-string v4, "beauty_makeup_button"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private initLegacyFaceBeautyTabs()V
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v2, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->LEGACY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const-class v3, Lcom/android/camera/fragment/beauty/LegacyBeautyLevelFragment;

    const v4, 0x7f0f006c

    const-string v5, "beauty_level_button"

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->onlyShowMainTab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;

    sget-object v1, Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;->LEGACY:Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;

    const v2, 0x7f0f006d

    const-class v3, Lcom/android/camera/fragment/beauty/LegacyMakeupParamsFragment;

    const-string v4, "beauty_makeup_button"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;-><init>(Lcom/android/camera/fragment/FragmentBeauty$SubTabGroup;ILjava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private initTabs()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initLegacyFaceBeautyTabs()V

    return-void

    .line 286
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupport3DFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->init3DFaceBeautyTabs()V

    return-void

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initFaceBeautyTabs()V

    return-void
.end method

.method private onlyShowMainTab()Z
    .locals 0

    .line 274
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->supportAdvanceBeautyFrontBokeh()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFunModule()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private removeFragmentBeauty()Z
    .locals 4

    .line 470
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, 0x7f090019

    .line 474
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xfb

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    .line 477
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mPendingShowTipsView:Z

    return v0
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfb

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0009

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 152
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initTabs()V

    const v0, 0x7f09003c

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/android/camera/Util;->sNavigationBarHeight:I

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/camera/Util;->sNavigationBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0007

    .line 161
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$1;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f090127

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    .line 174
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;-><init>(Lcom/android/camera/fragment/FragmentBeauty;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    .line 175
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/FragmentBeauty$BeautyPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$2;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$3;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f090016

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/BeautyTitleView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    .line 233
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->initBeautyTitleViews(Lcom/android/camera/ui/BeautyTitleView;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->removeFragmentBeauty()Z

    move-result p0

    return p0
.end method

.method public onDetach()V
    .locals 2

    .line 487
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 488
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mPendingShowTipsView:Z

    if-eqz v0, :cond_1

    .line 490
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_0

    .line 492
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_0
    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mPendingShowTipsView:Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 460
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 462
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_0

    .line 463
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->removeFragmentBeauty()Z

    :cond_0
    return-void
.end method

.method public onTitleClick(I)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    .line 428
    iget-boolean v1, v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->isNew:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->titleId:I

    const v1, 0x7f0f006a

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeauty3DMakeUpClicked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-static {}, Lcom/android/camera/CameraSettings;->setBeauty3DMakeupClicked()V

    .line 430
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {v0}, Lcom/android/camera/ui/BeautyTitleView;->notifyDataChange()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->statisticKey:Ljava/lang/String;

    const-string v1, "counter"

    invoke-static {v1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mTitleView:Lcom/android/camera/ui/BeautyTitleView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BeautyTitleView;->setActiveIdx(I)V

    .line 436
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
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

    .line 376
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/4 p1, 0x4

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->onBackEvent(I)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_0
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 355
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 358
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 359
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0xa7
        0xa1
    .end array-data
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 365
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 369
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0xa8
        0xa2
    .end array-data
.end method

.method public refreshBottomBeauty(Z)V
    .locals 2

    .line 392
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBeauty$5;-><init>(Lcom/android/camera/fragment/FragmentBeauty;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 137
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xc1

    .line 138
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 144
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xc1

    .line 145
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
