.class public Lcom/android/camera/fragment/FragmentFilter;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;,
        Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;,
        Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;,
        Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentFilter"


# instance fields
.field private isAnimation:Z

.field private mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

.field private mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field private mCurrentIndex:I

.field private mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

.field private mEffectItemHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHolderWidth:I

.field private mIgnoreSameItemClick:Z

.field private mIsShowIndex:I

.field private mLastIndex:I

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemHolderList:Ljava/util/List;

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLastIndex:I

    .line 72
    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mIgnoreSameItemClick:Z

    .line 75
    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/camera/fragment/FragmentFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentFilter;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/FragmentFilter;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentFilter;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentFilter;Landroid/widget/ImageView;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentFilter;->showSelected(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/FragmentFilter;)Lmiui/view/animation/CubicEaseOutInterpolator;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/FragmentFilter;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLastIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/FragmentFilter;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemHolderList:Ljava/util/List;

    return-object p0
.end method

.method private getFilterInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    const/16 v0, 0xa1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xab

    if-eq p0, v0, :cond_3

    :cond_0
    move v1, v2

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    .line 171
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private notifyItemChanged(II)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    if-le p2, v0, :cond_1

    .line 251
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private onFilterChanged(I)V
    .locals 3

    .line 307
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    .line 308
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 311
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xac

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 313
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 318
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configGroupSwitch(I)V

    .line 320
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    .line 324
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;

    if-eqz v1, :cond_2

    .line 326
    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v2

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result p1

    invoke-interface {v1, v2, p1}, Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;->onFilterChanged(II)V

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/16 v1, 0xc4

    aput v1, p1, v0

    .line 330
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method private onFilterSelected(IZ)V
    .locals 4

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 291
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    .line 292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 293
    invoke-direct {p0, v0, p2}, Lcom/android/camera/fragment/FragmentFilter;->trackFilterChanged(IZ)V

    .line 294
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFilter;->persistFilter(I)V

    .line 295
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFilter;->selectItem(I)V

    .line 296
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFilter;->onFilterChanged(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 298
    sget-object p1, Lcom/android/camera/fragment/FragmentFilter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid filter id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private persistFilter(I)V
    .locals 0

    .line 303
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 257
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 260
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 261
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 258
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v0, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private selectItem(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 233
    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLastIndex:I

    .line 234
    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFilter;->scrollIfNeed(I)V

    .line 242
    iget p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mLastIndex:I

    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentFilter;->notifyItemChanged(II)V

    :cond_0
    return-void
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 225
    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    .line 226
    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    .line 227
    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mHolderWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 228
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showSelected(Landroid/widget/ImageView;I)V
    .locals 5

    .line 498
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 499
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 500
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 501
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 502
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 503
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    .line 504
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v3, 0x0

    .line 506
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 507
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 508
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 509
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 510
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private trackFilterChanged(IZ)V
    .locals 2

    .line 360
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u6a21\u5f0f"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->filterIdToName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u6ee4\u955c"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string p0, "\u70b9\u51fb"

    goto :goto_0

    :cond_1
    const-string p0, "\u6ed1\u52a8"

    :goto_0
    const-string p1, "\u65b9\u5f0f"

    .line 366
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "counter"

    const-string p1, "filter_changed"

    .line 368
    invoke-static {p0, p1, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateCurrentIndex()V
    .locals 4

    .line 192
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 196
    sget-object v1, Lcom/android/camera/fragment/FragmentFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 199
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentFilter;->setItemInCenter(I)V

    return-void
.end method


# virtual methods
.method public delayShowSelected(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 204
    iget p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    goto :goto_0

    .line 207
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    .line 208
    iget p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFilter;->setItemInCenter(I)V

    const/4 p1, -0x1

    .line 209
    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    .line 211
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    iget p0, p0, Lcom/android/camera/fragment/FragmentFilter;->mIsShowIndex:I

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0013

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090041

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 88
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFilter;->getFilterInfo()Ljava/util/ArrayList;

    move-result-object p1

    .line 89
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    .line 90
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mapToItems(Ljava/util/ArrayList;)V

    .line 92
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mTotalWidth:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mHolderWidth:I

    .line 103
    new-instance v0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;-><init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentConfigFilter;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    .line 104
    new-instance v0, Lcom/android/camera/fragment/FragmentFilter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/FragmentFilter$1;-><init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 116
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 117
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    .line 118
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffectCount(I)I

    move-result v1

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 119
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 120
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;-><init>(Lcom/android/camera/fragment/FragmentFilter;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 121
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/FragmentFilter$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentFilter$2;-><init>(Lcom/android/camera/fragment/FragmentFilter;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 130
    new-instance p1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 136
    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    return-void
.end method

.method public isShowAnimation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 274
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 279
    iget v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mIgnoreSameItemClick:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentFilter;->isAnimation:Z

    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentFilter;->onFilterSelected(IZ)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFilter;->updateCurrentIndex()V

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

    .line 564
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public switchFilter(I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 350
    sget-object v0, Lcom/android/camera/fragment/FragmentFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 345
    iget p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 338
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/FragmentFilter;->mCurrentIndex:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    if-le p1, v1, :cond_3

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentFilter;->onFilterSelected(IZ)V

    :cond_3
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public updateFilterData()V
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFilter;->getFilterInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    .line 186
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mapToItems(Ljava/util/ArrayList;)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter;->mEffectItemAdapter:Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFilter;->mComponentConfigFilter:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->updateData(Lcom/android/camera/data/data/config/ComponentConfigFilter;)V

    .line 188
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFilter;->updateCurrentIndex()V

    return-void
.end method
