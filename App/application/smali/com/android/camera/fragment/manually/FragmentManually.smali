.class public Lcom/android/camera/fragment/manually/FragmentManually;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentManually.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mCurrentAdjustType:I

.field private mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

.field private mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

.field private mIndicatorButton:Landroid/widget/ImageView;

.field private mIsHiding:Z

.field private mManuallyComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation
.end field

.field private mManuallyParent:Landroid/view/ViewGroup;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/manually/FragmentManually;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsHiding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/view/ViewGroup;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/widget/ImageView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method private adjustViewBackground(I)V
    .locals 1

    .line 576
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const p1, 0x7f06001f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 580
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const p1, 0x7f060021

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideTips()V
    .locals 1

    .line 235
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    .line 237
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_0
    return-void
.end method

.method private initManually()V
    .locals 4

    .line 498
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    .line 499
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 500
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/ManuallyDecoration;->setStyle(I)V

    .line 501
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 502
    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;-><init>(ILandroid/view/View$OnClickListener;Ljava/util/List;)V

    .line 503
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 505
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->updateData()V

    .line 508
    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    .line 511
    :cond_0
    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method private initManuallyDataList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    goto :goto_0

    .line 310
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunctionFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunctionET()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualLensMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    invoke-direct {v2, v0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyComponents:Ljava/util/List;

    return-object p0
.end method

.method private initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I
    .locals 1

    .line 435
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 455
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->initTilt(Lcom/android/camera/fragment/manually/ManuallyListener;)V

    goto :goto_0

    .line 449
    :cond_1
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 450
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->initScene(Lcom/android/camera/fragment/manually/ManuallyListener;)V

    goto :goto_0

    .line 444
    :cond_2
    iput v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 445
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManually()V

    .line 458
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_3
    const/4 p1, 0x0

    .line 439
    iput p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 440
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return p1
.end method

.method private initScene(Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 5

    .line 515
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 516
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v0

    .line 517
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 518
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x40b00000    # 5.5f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    .line 519
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 520
    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method private initTilt(Lcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 5

    .line 524
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 526
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/manually/ManuallyDecoration;->setStyle(I)V

    .line 527
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 528
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V

    .line 530
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 531
    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method private reInitManuallyLayout(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 362
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    invoke-direct {p0, v0, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, v0, p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    :goto_0
    if-nez p1, :cond_5

    if-nez p2, :cond_3

    .line 377
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    .line 379
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 380
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    :cond_4
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/16 v0, 0x50

    invoke-direct {p1, p0, v0}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private setManuallyLayoutViewVisible(I)V
    .locals 3

    .line 464
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0xfe

    .line 465
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    const/4 v0, 0x1

    const/16 v1, 0x50

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    iput v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 488
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 489
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 491
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_0

    .line 477
    :cond_2
    iput v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    .line 478
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 479
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 480
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 482
    :cond_3
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-direct {p1, p0, v1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 469
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 472
    :cond_5
    new-instance p1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-direct {p1, p0, v1}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf7

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0015

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v0, 0x7f09007e

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09007a

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    .line 82
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    .line 83
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerViewLayout:Landroid/view/ViewGroup;

    const v0, 0x7f090083

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 85
    new-instance p1, Lcom/android/camera/fragment/manually/ManuallyDecoration;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/android/camera/fragment/manually/ManuallyDecoration;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mDecoration:Lcom/android/camera/fragment/manually/ManuallyDecoration;

    .line 87
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/FragmentManually;->adjustViewBackground(I)V

    .line 92
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/manually/FragmentManually;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 566
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 568
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 570
    new-instance p1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    const/16 v0, 0x50

    invoke-direct {p1, p0, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    .line 543
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 545
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->adjustViewBackground(I)V

    .line 547
    iget p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p2, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->initManuallyDataList()Ljava/util/List;

    .line 549
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 550
    iget-object p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 553
    :cond_0
    iget p2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    const/4 v1, 0x0

    .line 554
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    .line 557
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 559
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p2, p1, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->notifyDataChanged(II)V

    :cond_2
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsHiding:Z

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIsHiding:Z

    .line 135
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 136
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 137
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    int-to-float v0, v0

    .line 138
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 139
    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v5, Lcom/android/camera/fragment/manually/FragmentManually$1;

    invoke-direct {v5, p0}, Lcom/android/camera/fragment/manually/FragmentManually$1;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    .line 140
    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 147
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 149
    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 151
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 152
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 153
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 154
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const-wide/16 v0, 0x12c

    .line 155
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 156
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 158
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09007e

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentData;

    .line 196
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    const v1, 0x7f0f0399

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 209
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-nez v1, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideTips()V

    .line 211
    new-instance v1, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-direct {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 212
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V

    .line 213
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f090082

    iget-object v2, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    .line 216
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {p1, v1, v2, v3}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto/16 :goto_0

    .line 219
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->getCurrentTitle()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 220
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->animateOut()V

    .line 221
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideTips()V

    .line 224
    iget-object v1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->resetData(Lcom/android/camera/data/data/ComponentData;)V

    .line 225
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0xfe

    .line 201
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    .line 202
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;

    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/manually/adapter/ManuallyAdapter;->setSelectedTitle(I)V

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, v0, v0, v2}, Lcom/android/camera/fragment/manually/FragmentManually;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 171
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->hideTips()V

    .line 172
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 176
    invoke-virtual {p1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 177
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 180
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 181
    invoke-virtual {p1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 182
    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/manually/FragmentManually$2;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 191
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :goto_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-nez v0, :cond_1

    return-void

    .line 260
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 270
    :sswitch_0
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :sswitch_1
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :sswitch_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xa1

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p2, :cond_2

    .line 285
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p2

    if-nez p2, :cond_2

    .line 286
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V

    goto :goto_0

    :cond_2
    const-string p1, "FragmentManully"

    const-string p2, "Snapshot is in progress, ignore event"

    .line 288
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    const-string p2, "manual"

    .line 262
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 263
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->getExtraFragment()Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-result-object p2

    .line 264
    move-object v1, p1

    check-cast v1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;)V

    .line 266
    :cond_3
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-interface {v0, p1, p3, p4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V

    goto :goto_0

    .line 278
    :sswitch_4
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;)V

    .line 294
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 298
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/android/camera/fragment/manually/FragmentManually$3;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/manually/FragmentManually$3;-><init>(Lcom/android/camera/fragment/manually/FragmentManually;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f02b0 -> :sswitch_4
        0x7f0f0390 -> :sswitch_3
        0x7f0f0399 -> :sswitch_2
        0x7f0f03c1 -> :sswitch_1
        0x7f0f03cb -> :sswitch_0
    .end sparse-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 347
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 357
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->reInitManuallyLayout(ILjava/util/List;)V

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb5

    .line 98
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 99
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I
    .locals 1

    .line 410
    invoke-direct {p0, p1, p3}, Lcom/android/camera/fragment/manually/FragmentManually;->initRecyclerView(ILcom/android/camera/fragment/manually/ManuallyListener;)I

    move-result p1

    .line 411
    iget-object p3, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p3, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 414
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/FragmentManually;->setManuallyLayoutViewVisible(I)V

    return p1
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb5

    .line 106
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 107
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 109
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 111
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mFragmentManuallyExtra:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public visibleHeight()I
    .locals 2

    .line 420
    iget v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mCurrentAdjustType:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 424
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mIndicatorButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    return p0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually;->mManuallyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 428
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700f4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method
