.class public Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.super Landroid/support/v4/app/Fragment;
.source "MakeupParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;
    }
.end annotation


# instance fields
.field protected mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemWidth:I

.field mLastSelectedParam:I

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

.field private mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

.field private mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

.field mSelectedParam:I

.field private mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLastSelectedParam:I

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;I)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->scrollIfNeed(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->notifyItemChanged(II)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090076

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    .line 51
    new-instance p1, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    .line 52
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 53
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initItems()Ljava/util/List;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->provideItemHorizontalMargin()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    .line 59
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mItemWidth:I

    .line 62
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mTotalWidth:I

    .line 63
    iget v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mTotalWidth:I

    iget v2, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mItemWidth:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    if-lez v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 68
    :goto_0
    new-instance v3, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 70
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$1;-><init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initSelectedItem()V

    .line 81
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 82
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 83
    new-instance p1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0x96

    .line 84
    invoke-virtual {p1, v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 85
    invoke-virtual {p1, v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 86
    invoke-virtual {p1, v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 89
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$2;-><init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;ZI)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 108
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 109
    iget p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->setItemInCenter(I)V

    return-void
.end method

.method private notifyItemChanged(II)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    if-le p2, v0, :cond_1

    .line 199
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private scrollIfNeed(I)Z
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    .line 206
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 210
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 207
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    if-eq v0, p1, :cond_4

    .line 213
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    :cond_4
    return v1
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 190
    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 191
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method protected beautyTypetoPosition(Lcom/android/camera/effect/BeautyParameters$Type;)I
    .locals 2

    .line 163
    sget-object p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$4;->$SwitchMap$com$android$camera$effect$BeautyParameters$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    return p1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return p1
.end method

.method protected initItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v1, 0x7f080185

    const v2, 0x7f0f00ea

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v1, 0x7f080183

    const v2, 0x7f0f00e7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v1, 0x7f08018c

    const v2, 0x7f0f00f2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v1, 0x7f08018e

    const v2, 0x7f0f00f1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 131
    new-instance v0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$3;-><init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;)V

    return-object v0
.end method

.method protected initSelectedItem()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->getCurrentType()Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->beautyTypetoPosition(Lcom/android/camera/effect/BeautyParameters$Type;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b000b

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method protected provideItemHorizontalMargin()I
    .locals 1

    .line 126
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected setSelectedItem(I)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 224
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 179
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 182
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 184
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mMakeupItemList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
