.class public Lcom/android/camera/fragment/beauty/BeautyLevelFragment;
.super Landroid/support/v4/app/Fragment;
.source "BeautyLevelFragment.java"


# instance fields
.field private mLevelItemList:Landroid/support/v7/widget/RecyclerView;

.field private mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090015

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    .line 40
    new-instance p1, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 42
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initItems()Ljava/util/List;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->provideItemHorizontalMargin()I

    move-result v1

    .line 48
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    .line 50
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v2, v4

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 51
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    .line 52
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->getCurrentLevel()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->beautyLevelToPosition(II)I

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->setSelectedPosition(I)V

    .line 55
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected beautyLevelToPosition(II)I
    .locals 0

    const/4 p0, 0x0

    .line 91
    invoke-static {p1, p0, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method protected initItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f08005d

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f080057

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f080058

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f080059

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f08005a

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    const v1, 0x7f08005b

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 75
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BeautyLevelFragment;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b000a

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method protected provideItemHorizontalMargin()I
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected setBeautyLevel(I)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 115
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result p0

    .line 117
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x0

    .line 121
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;->refreshBottomBeauty(Z)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 123
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$FrontBeautyProtocol;->refreshBottomBeauty(Z)V

    .line 127
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/BeautyParameters;->setLevel(I)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->setEnableClick(Z)V

    .line 102
    :cond_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 104
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mLevelItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;->mSingleCheckAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->setEnableClick(Z)V

    :cond_2
    :goto_0
    return-void
.end method
