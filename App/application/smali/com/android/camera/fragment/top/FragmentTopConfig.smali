.class public Lcom/android/camera/fragment/top/FragmentTopConfig;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;
.implements Lcom/android/camera/protocol/ModeProtocol$TopAlert;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBeautyRecording;


# instance fields
.field private mBeforeMode:I

.field private mConfigViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAiSceneLevel:I

.field private mDisabledFunctionMenu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayRectTopMargin:I

.field private mExpandView:Landroid/support/v7/widget/RecyclerView;

.field private mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field private mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

.field private mIsRTL:Z

.field private mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTopConfigMenu:Landroid/view/View;

.field private mTopDrawableWidth:I

.field private mTopExtraParent:Landroid/view/ViewGroup;

.field private mTotalWidth:I

.field private mViewPadding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 103
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    const/16 v0, 0xa0

    .line 113
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    return-void
.end method

.method private expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V
    .locals 12

    .line 480
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 486
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/top/ExpandAdapter;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/fragment/top/ExpandAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;)V

    .line 490
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 491
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr v3, p1

    .line 492
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 493
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 494
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 501
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0700b1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v4, 0x3

    mul-int/2addr p1, v4

    .line 508
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImagePosition(I)I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-nez v5, :cond_1

    move v7, v0

    move v10, v7

    goto :goto_1

    :cond_1
    if-ne v5, v7, :cond_2

    move v10, v7

    move v7, v9

    goto :goto_1

    :cond_2
    if-eq v5, v9, :cond_4

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    move v10, v0

    move v7, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v10, v4

    move v7, v8

    .line 527
    :goto_1
    iget-boolean v11, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v11, :cond_5

    rsub-int/lit8 v7, v7, 0x4

    :cond_5
    if-eqz v7, :cond_a

    if-eq v7, v2, :cond_9

    if-eq v7, v8, :cond_8

    if-eq v7, v4, :cond_7

    if-eq v7, v9, :cond_6

    move p1, v0

    move v4, p1

    move v6, v4

    goto :goto_5

    .line 552
    :cond_6
    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-virtual {v6, v4}, Lcom/android/camera/fragment/top/LastAnimationComponent;->setExpandGravity(I)V

    .line 553
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    .line 554
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/2addr p1, v6

    goto :goto_3

    .line 547
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    .line 548
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_2

    .line 542
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    .line 543
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    :goto_2
    sub-int/2addr v6, v3

    sub-int p1, v6, p1

    :goto_3
    sub-int v6, v4, v3

    goto :goto_5

    .line 535
    :cond_9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/top/LastAnimationComponent;->setExpandGravity(I)V

    .line 538
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p1

    .line 539
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_4

    .line 529
    :cond_a
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-virtual {v4, v6}, Lcom/android/camera/fragment/top/LastAnimationComponent;->setExpandGravity(I)V

    .line 531
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int p1, v4, p1

    .line 532
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_4
    add-int/2addr v4, v0

    move v6, v4

    move v4, v0

    .line 563
    :goto_5
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iget-object v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    iput-object v9, v7, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 564
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v7, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    .line 565
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iput p1, v7, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    const/16 v7, 0xc1

    if-ne p3, v7, :cond_b

    move v1, v2

    goto :goto_6

    :cond_b
    const/16 v2, 0xc2

    if-ne p3, v2, :cond_c

    move v1, v8

    .line 574
    :cond_c
    :goto_6
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-virtual {v2, p3, v7, v1}, Lcom/android/camera/fragment/top/LastAnimationComponent;->hideOtherViews(ILjava/util/List;I)V

    if-eq v5, v10, :cond_d

    .line 577
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iput-object p2, p3, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    .line 578
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr v4, p2

    invoke-virtual {p3, v4}, Lcom/android/camera/fragment/top/LastAnimationComponent;->translateAnchorView(I)V

    .line 581
    :cond_d
    iget-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int v0, p2, v3

    .line 583
    :cond_e
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    sub-int/2addr p1, v0

    sub-int/2addr v6, v0

    invoke-virtual {p0, p1, v6}, Lcom/android/camera/fragment/top/LastAnimationComponent;->showExtraView(II)V

    return-void
.end method

.method private getAiSceneDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1425
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    .line 1426
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-ltz p1, :cond_1

    .line 1427
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1430
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1431
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAlertTopMargin()I
    .locals 3

    .line 1315
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const v1, 0x7f0700b1

    const/16 v2, 0xa5

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    if-nez v0, :cond_0

    .line 1316
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    div-float v2, v0, v2

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 1318
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    sub-int/2addr v0, p0

    goto :goto_1

    .line 1321
    :cond_0
    sget-boolean v0, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    sget v2, Lcom/android/camera/Util;->sStatusBarHeight:I

    if-ne v0, v2, :cond_1

    .line 1322
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    .line 1323
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    if-lez v0, :cond_2

    .line 1325
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1328
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    :goto_1
    return v0
.end method

.method private getInitialMargin(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, p1, 0x2

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopDrawableWidth:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v0, v3

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    sub-int/2addr v0, p0

    div-int/2addr v0, v1

    return v0

    .line 206
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    mul-int/lit8 v0, p0, 0x2

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x3

    mul-int/2addr p1, v1

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 204
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    mul-int/lit8 v0, p0, 0x2

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 208
    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopDrawableWidth:I

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/2addr p0, v1

    add-int/2addr v0, p0

    div-int/2addr p1, v1

    sub-int/2addr v0, p1

    div-int/2addr v0, v1

    return v0
.end method

.method private getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;
    .locals 1

    .line 1308
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/16 v0, 0xf5

    .line 1309
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1308
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    return-object p0
.end method

.method private reConfigTipImage()V
    .locals 6

    .line 1380
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 1381
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v1

    .line 1382
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "on"

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1383
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1384
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1385
    invoke-virtual {p0, v5, v5, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    return-void

    :cond_0
    const-string v2, "torch"

    .line 1387
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1388
    invoke-virtual {p0, v5, v3, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    return-void

    .line 1393
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 1394
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1395
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1396
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "normal"

    .line 1397
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "live"

    .line 1400
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1401
    invoke-virtual {p0, v5, v3, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    return-void

    .line 1398
    :cond_3
    :goto_0
    invoke-virtual {p0, v5, v5, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    :cond_4
    return-void
.end method

.method private resetImages()V
    .locals 11

    .line 997
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v7

    .line 998
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v7, v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v0, 0x0

    move v8, v0

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 1002
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v10

    .line 1003
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, v10

    move-object v2, v9

    move-object v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    .line 1004
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z
    .locals 6

    const/16 v0, 0xe1

    const v1, 0x7f08013b

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x8

    const-string v4, "on"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    .line 870
    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result p4

    if-eqz p4, :cond_0

    const p4, 0x7f08007d

    goto :goto_0

    :cond_0
    const p4, 0x7f08007c

    :goto_0
    move v1, p4

    .line 872
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result p4

    if-eqz p4, :cond_1

    const p4, 0x7f0f0004

    goto :goto_1

    :cond_1
    const p4, 0x7f0f0003

    :goto_1
    move v3, p4

    goto/16 :goto_9

    .line 848
    :pswitch_1
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object p4

    .line 849
    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p4

    .line 850
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    const p6, 0x7f08013c

    move v1, p6

    .line 851
    :cond_2
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const p4, 0x7f0f000e

    goto :goto_1

    :cond_3
    const p4, 0x7f0f000d

    goto :goto_1

    .line 866
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFocusPeakImageResource()I

    move-result v1

    const v3, 0x7f0f0027

    goto/16 :goto_9

    :pswitch_3
    return v3

    :pswitch_4
    const v1, 0x7f08012e

    const v3, 0x7f0f0035

    goto/16 :goto_9

    :pswitch_5
    if-eqz p6, :cond_4

    .line 825
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object p4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p6

    invoke-interface {p4, p3, p6}, Lcom/android/camera/data/backup/DataBackUp;->getBackupFilter(II)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 827
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p4

    .line 830
    :goto_2
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .line 831
    sget p6, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p4, p6, :cond_6

    if-gtz p4, :cond_5

    goto :goto_3

    :cond_5
    const p4, 0x7f0800cd

    goto :goto_4

    :cond_6
    :goto_3
    const p4, 0x7f0800cb

    :goto_4
    move v1, p4

    .line 837
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p4

    const/16 p6, 0xa2

    .line 838
    invoke-virtual {p4, p6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p4

    check-cast p4, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p4, :cond_11

    .line 840
    invoke-interface {p4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result p4

    if-eqz p4, :cond_7

    const v3, 0x7f0f001e

    goto/16 :goto_9

    :cond_7
    const v3, 0x7f0f001f

    goto/16 :goto_9

    :pswitch_6
    const v3, 0x7f0f003c

    goto/16 :goto_9

    .line 805
    :pswitch_7
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p4

    .line 806
    invoke-virtual {p4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 807
    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v1

    .line 808
    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v5

    if-nez p6, :cond_e

    .line 810
    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p4

    .line 811
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_a

    const-string p6, "normal"

    .line 812
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_8

    goto :goto_5

    :cond_8
    const-string p6, "live"

    .line 814
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 815
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto :goto_7

    .line 817
    :cond_9
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto :goto_7

    .line 813
    :cond_a
    :goto_5
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto :goto_7

    .line 787
    :pswitch_8
    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p4

    .line 788
    invoke-virtual {p4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 789
    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v1

    .line 790
    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v5

    if-nez p6, :cond_e

    .line 792
    invoke-virtual {p4, p3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p4

    .line 793
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_d

    const-string p6, "screen_light_on"

    .line 794
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_b

    goto :goto_6

    :cond_b
    const-string p6, "torch"

    .line 796
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 797
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    goto :goto_7

    .line 799
    :cond_c
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    goto :goto_7

    .line 795
    :cond_d
    :goto_6
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    :cond_e
    :goto_7
    move v3, v5

    goto :goto_9

    :cond_f
    :goto_8
    move v1, v3

    goto :goto_9

    :cond_10
    const v1, 0x7f0800bf

    const v3, 0x7f0f0041

    :cond_11
    :goto_9
    if-lez v1, :cond_15

    .line 878
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 879
    invoke-direct {p0, p5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getInitialMargin(I)I

    move-result p5

    if-lez p5, :cond_13

    .line 881
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p6

    check-cast p6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 884
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v0, :cond_12

    .line 885
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    sub-int/2addr p5, v0

    iput p5, p6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_a

    .line 887
    :cond_12
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p5, v0

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    sub-int/2addr p5, v0

    iput p5, p6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_13
    :goto_a
    if-nez p2, :cond_14

    .line 891
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "newMode = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", newType = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentTopConfig"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 893
    :cond_14
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-lez v3, :cond_15

    .line 894
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 895
    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showMenu()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 677
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideAlert()V

    .line 679
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    .line 680
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 682
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 683
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 685
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    .line 687
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900f2

    .line 685
    invoke-static {v0, v2, p0, v1}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method private trackBokehChanged(ILjava/lang/String;)V
    .locals 1

    .line 428
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 431
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 432
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6a21\u5f0f"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "BOKEH"

    .line 433
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string p2, "bokeh_changed"

    .line 434
    invoke-static {p1, p2, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackFlashChanged(ILjava/lang/String;)V
    .locals 1

    .line 390
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 393
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 394
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6a21\u5f0f"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\u95ea\u5149\u706f"

    .line 395
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string p2, "flash_changed"

    .line 396
    invoke-static {p1, p2, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackHdrChanged(ILjava/lang/String;)V
    .locals 1

    .line 400
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 403
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 404
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6a21\u5f0f"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "HDR"

    .line 405
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string p2, "hdr_changed"

    .line 406
    invoke-static {p1, p2, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public alertAiSceneSelector(ILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V
    .locals 2

    .line 1247
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1248
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1252
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiSceneSelector(IILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertAiSceneSwitchHint(I)V
    .locals 2

    .line 1292
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1293
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiSceneSwitchHint(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertFlash(IZZ)V
    .locals 2

    .line 1216
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1217
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const/16 p3, 0xc1

    .line 1223
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageView;->performClick()Z

    .line 1228
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFlash(IIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public alertHDR(IZZ)V
    .locals 2

    .line 1198
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1199
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const/16 p3, 0xc2

    .line 1205
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageView;->performClick()Z

    .line 1211
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertHDR(IIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public alertUpdateValue(I)V
    .locals 2

    .line 1233
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1238
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertUpdateValue(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearAlertStatus()V
    .locals 0

    .line 1459
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearAlertStatus()V

    return-void
.end method

.method public varargs disableMenuItem([I)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1141
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1142
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs enableMenuItem([I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1150
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 1153
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 1154
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method getFocusPeakImageResource()I
    .locals 2

    .line 461
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string v0, "pref_camera_peak_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    .line 462
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const p0, 0x7f0800b0

    return p0

    :cond_0
    const p0, 0x7f0800b3

    return p0

    :cond_1
    if-eqz p0, :cond_2

    const p0, 0x7f0800b2

    return p0

    :cond_2
    const p0, 0x7f0800b1

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf4

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0023

    return p0
.end method

.method public getTopImage(I)Landroid/widget/ImageView;
    .locals 2

    .line 439
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 440
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopImagePosition(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 450
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public hideAlert()V
    .locals 1

    .line 1437
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear()V

    const/4 v0, 0x0

    .line 1442
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    return-void
.end method

.method public hideConfigMenu()V
    .locals 1

    .line 1135
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public hideExtraMenu()V
    .locals 1

    const/4 v0, 0x6

    .line 1123
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 9

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    .line 118
    new-instance v0, Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/LastAnimationComponent;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    const v0, 0x7f0900f2

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraParent:Landroid/view/ViewGroup;

    const v0, 0x7f0900f4

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    .line 125
    sget-boolean v0, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 128
    sget v1, Lcom/android/camera/Util;->sStatusBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 132
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v3, 0x7f0900ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 134
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v4, 0x7f0900ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 135
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v5, 0x7f0900ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 136
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v6, 0x7f0900ef

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 137
    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v7, 0x7f0900f0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 139
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    .line 140
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f0900f1

    .line 148
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    .line 149
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p1, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 150
    invoke-virtual {p1, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 151
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 153
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v7, 0x7f0700b1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    .line 156
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v7, 0x7f0800ad

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopDrawableWidth:I

    .line 158
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getTotalWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    .line 182
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;)V

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance p1, Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0900e8

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {p1, v0, p0, v1}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public insertConfigItem(I)V
    .locals 4

    .line 1025
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->hasConfig(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc4

    .line 1029
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 1031
    iget-boolean v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1033
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetImages()V

    .line 1036
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x4

    .line 1037
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1039
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1040
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1043
    iget-boolean v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v2, :cond_2

    neg-int v3, v3

    .line 1046
    :cond_2
    new-instance v2, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {v2, v1, v3}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/top/FragmentTopConfig$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig$1;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;Landroid/view/View;)V

    .line 1047
    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    .line 1062
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p0

    .line 1063
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1365
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 1368
    :try_start_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    .line 1371
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMutexConfigs()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FragmentTopConfig"

    const-string v0, "Unexpected exceptions "

    .line 1374
    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1357
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 1359
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    .line 1360
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 6

    .line 738
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 742
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v4, 0xc8

    if-eq p1, v3, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x6

    if-eq p1, v5, :cond_2

    .line 758
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/16 v4, 0xf5

    .line 759
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 758
    invoke-static {v0, v4}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    .line 760
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 753
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->animateOut()V

    .line 754
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 755
    invoke-virtual {v0, v4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 754
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 747
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->animateOut()V

    .line 748
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 749
    invoke-virtual {v0, v4}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 748
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    if-eq p1, v1, :cond_4

    .line 765
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reInitAlert()V

    :cond_4
    return v3

    :cond_5
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    const-string v1, "FragmentTopConfig"

    if-eqz v0, :cond_9

    .line 245
    invoke-interface {v0}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 251
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa4

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_2

    return-void

    .line 258
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v2, :cond_3

    .line 259
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 263
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 265
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    const/16 v3, 0xe1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const/16 p0, 0xc9

    .line 290
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_0

    .line 315
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 317
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    .line 318
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackBokehChanged(ILjava/lang/String;)V

    new-array v2, v4, [I

    const/16 v5, 0xc8

    aput v5, v2, v3

    .line 320
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 322
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v2, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfBokehChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v4, [I

    const/16 v2, 0xc2

    aput v2, p1, v3

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 326
    :cond_5
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configBokeh(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xc7

    .line 311
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    .line 312
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFocusPeakImageResource()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 299
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showMenu()V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xc4

    .line 294
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    new-array v0, v4, [I

    aput p1, v0, v3

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    goto :goto_0

    :pswitch_5
    const/16 p0, 0xc3

    .line 307
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    .line 285
    :pswitch_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 286
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_0

    .line 271
    :pswitch_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 272
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->disableUpdate()Z

    move-result v3

    if-nez v3, :cond_6

    .line 274
    invoke-direct {p0, v0, p1, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_0

    .line 276
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDisableReasonString()I

    move-result p0

    if-eqz p0, :cond_7

    .line 278
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    :cond_7
    const-string p0, "ignore click flash for disable update"

    .line 280
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showSetting()V

    :goto_0
    return-void

    :cond_9
    :goto_1
    const-string p0, "onClick: ignore click event, because module isn\'t ready"

    .line 246
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;)V
    .locals 7

    .line 334
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 340
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v1, :cond_1

    return-void

    .line 345
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    const v2, 0x7f0f0270

    const/16 v3, 0xc1

    const/16 v4, 0xc2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p1, v2, :cond_9

    const v2, 0x7f0f028b

    if-eq p1, v2, :cond_2

    goto/16 :goto_1

    .line 357
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackHdrChanged(ILjava/lang/String;)V

    new-array p1, v6, [I

    aput v4, p1, v5

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 359
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v6, [I

    aput v3, p1, v5

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 361
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFlash(Ljava/lang/String;)V

    .line 363
    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigBokehIfHdrChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v6, [I

    const/16 v2, 0xc8

    aput v2, p1, v5

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 366
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa5

    if-eq p1, v2, :cond_5

    const/16 v2, 0xa3

    if-ne p1, v2, :cond_8

    :cond_5
    const-string p1, "off"

    .line 369
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 370
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 371
    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->updateComponentBeauty(Z)V

    goto :goto_0

    .line 373
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result p1

    if-ne p1, v4, :cond_7

    .line 374
    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 376
    :cond_7
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->updateComponentBeauty(Z)V

    .line 381
    :cond_8
    :goto_0
    invoke-interface {v1, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configHdr(Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_9
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackFlashChanged(ILjava/lang/String;)V

    new-array p1, v6, [I

    aput v3, p1, v5

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 349
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfFlashChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v6, [I

    aput v4, p1, v5

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 353
    :cond_a
    invoke-interface {v1, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFlash(Ljava/lang/String;)V

    .line 385
    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 p1, -0x1

    invoke-virtual {p0, v6, p1}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    .line 911
    iget v0, v7, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v0, v8, :cond_0

    .line 912
    iput v0, v7, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    .line 914
    :cond_0
    iget v10, v7, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 915
    invoke-super/range {p0 .. p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/16 v0, 0xa9

    const/16 v1, 0xa8

    const/16 v2, 0xa2

    const/4 v12, 0x1

    if-eq v10, v2, :cond_1

    if-eq v10, v1, :cond_1

    if-eq v10, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eq v8, v2, :cond_2

    if-eq v8, v1, :cond_2

    if-eq v8, v0, :cond_2

    :goto_0
    move v0, v12

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 933
    invoke-virtual {v7, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    .line 936
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 938
    invoke-virtual {v0, v8, v9}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideAnimateElement(ILjava/util/List;)V

    .line 941
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 942
    invoke-virtual {v13, v8}, Lcom/android/camera/data/data/config/DataItemConfig;->getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v14, 0x0

    .line 944
    :goto_2
    iget-object v0, v7, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_c

    .line 945
    iget-object v0, v7, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/ImageView;

    .line 946
    iget-object v0, v7, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v14}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v6

    if-eqz v9, :cond_5

    move/from16 v16, v12

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v15

    move/from16 v3, p1

    move-object v4, v13

    move v5, v14

    move v11, v6

    move/from16 v6, v16

    .line 948
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    move-result v0

    .line 952
    invoke-virtual {v15}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 953
    invoke-virtual {v15}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v11, :cond_6

    goto :goto_5

    .line 959
    :cond_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez v9, :cond_8

    if-eqz v0, :cond_7

    .line 964
    invoke-static {v15}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_5

    .line 966
    :cond_7
    invoke-static {v15}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_5

    :cond_8
    const/16 v1, 0x96

    if-eqz v0, :cond_9

    .line 976
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v0, v15}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 978
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 979
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 981
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    const/16 v0, 0xa5

    if-eq v10, v0, :cond_b

    .line 983
    iget v2, v7, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v2, v0, :cond_a

    goto :goto_4

    .line 986
    :cond_a
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v0, v15}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 984
    :cond_b
    :goto_4
    invoke-static {v15}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_c
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

    .line 1409
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 1410
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->provideRotateItem(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public reInitAlert()V
    .locals 2

    .line 1447
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1451
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    .line 1452
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipImage()V

    const/4 v0, 0x4

    .line 1453
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertUpdateValue(I)V

    return-void
.end method

.method public refreshExtraMenu()V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->reFresh()V

    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 693
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 695
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xac

    .line 696
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public removeConfigItem(I)V
    .locals 5

    .line 1070
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->hasConfig(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1075
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0xc4

    .line 1077
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 1079
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1081
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    .line 1083
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetImages()V

    .line 1086
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x4

    .line 1087
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    iget-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_0
    sub-int/2addr v3, v2

    .line 1092
    iget-boolean v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v2, :cond_2

    neg-int v3, v3

    .line 1095
    :cond_2
    new-instance v2, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {v2, v1, v3}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    new-instance v3, Lcom/android/camera/fragment/top/FragmentTopConfig$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig$2;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;Landroid/view/View;)V

    .line 1096
    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    .line 1112
    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public removeExtraMenu()V
    .locals 1

    const/4 v0, 0x5

    .line 1118
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public setAiSceneImageLevel(I)V
    .locals 2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    const/16 p1, 0x17

    .line 1262
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiSceneDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0xc9

    .line 1266
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1282
    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 1

    .line 228
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 229
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 233
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 234
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_1
    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1170
    :cond_0
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 1171
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 1172
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 1164
    :cond_1
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    .line 1165
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 1166
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 1177
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 1178
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1179
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/camera/fragment/top/FragmentTopConfig$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig$3;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/fragment/top/FragmentTopAlert;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1186
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(I)V

    :goto_1
    return-void
.end method

.method public showConfigMenu()V
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1471
    :cond_0
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 711
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 713
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xac

    .line 714
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 716
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 717
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 720
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    if-eqz p0, :cond_1

    .line 721
    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 724
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public varargs updateConfigItem([I)V
    .locals 10

    .line 1010
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    .line 1011
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 1012
    array-length v8, p1

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_0

    aget v2, p1, v9

    .line 1015
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 1018
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImagePosition(I)I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v0

    .line 1013
    invoke-direct/range {v1 .. v7}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateContentDescription()V
    .locals 2

    const/16 v0, 0xc4

    .line 1418
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0f001f

    .line 1420
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 0

    .line 1192
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    .line 1193
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateRecordingTime(Ljava/lang/String;)V

    return-void
.end method
