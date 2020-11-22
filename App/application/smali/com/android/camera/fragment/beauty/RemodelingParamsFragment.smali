.class public Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;
.super Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.source "RemodelingParamsFragment.java"


# static fields
.field private static final MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/camera/effect/BeautyParameters$Type;",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/camera/effect/BeautyParameters$Type;",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBeautyTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/effect/BeautyParameters$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    .line 42
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SHRINK_FACE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080185

    const v4, 0x7f0f00ea

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->ENLARGE_EYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080183

    const v4, 0x7f0f00e7

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->NOSE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080189

    const v4, 0x7f0f00ee

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->RISORIUS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f08018b

    const v4, 0x7f0f00f0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->LIPS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080187

    const v4, 0x7f0f00ec

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->CHIN_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080182

    const v4, 0x7f0f00e6

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->NECK_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080188

    const v4, 0x7f0f00ed

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SMILE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f08018c

    const v4, 0x7f0f00f4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->SLIM_NOSE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f08018d

    const v4, 0x7f0f00f3

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->EYEBROW_DYE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080184

    const v4, 0x7f0f00e8

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->PUPIL_LINE_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f08018a

    const v4, 0x7f0f00ef

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->JELLY_LIPS_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080186

    const v4, 0x7f0f00eb

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/effect/BeautyParameters$Type;->BLUSHER_RATIO:Lcom/android/camera/effect/BeautyParameters$Type;

    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    const v3, 0x7f080181

    const v4, 0x7f0f00e5

    invoke-direct {v2, v3, v4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->saveSelectedPosition(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;Lcom/android/camera/effect/BeautyParameters$Type;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->onBeautyTypeSelected(Lcom/android/camera/effect/BeautyParameters$Type;)V

    return-void
.end method

.method private getPageNameId()I
    .locals 2

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const v0, 0x7f0f006b

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "name"

    .line 117
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private loadSelectedPosition()I
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getPageNameId()I

    move-result p0

    const v0, 0x7f0f006a

    if-ne p0, v0, :cond_0

    const-string p0, "beauty_3d_makeup_select_item"

    goto :goto_0

    :cond_0
    const-string p0, "beauty_3d_remodeling_select_item"

    .line 112
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private onBeautyTypeSelected(Lcom/android/camera/effect/BeautyParameters$Type;)V
    .locals 0

    .line 163
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/BeautyParameters;->setType(Lcom/android/camera/effect/BeautyParameters$Type;)V

    .line 165
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xb4

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz p0, :cond_0

    .line 168
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected()V

    :cond_0
    return-void
.end method

.method private saveSelectedPosition(I)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getPageNameId()I

    move-result p0

    const v0, 0x7f0f006a

    if-ne p0, v0, :cond_0

    const-string p0, "beauty_3d_makeup_select_item"

    goto :goto_0

    :cond_0
    const-string p0, "beauty_3d_remodeling_select_item"

    .line 107
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method private updateFocusBeautyItem()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    .line 88
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->setSelectedItem(I)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->onBeautyTypeSelected(Lcom/android/camera/effect/BeautyParameters$Type;)V

    return-void
.end method


# virtual methods
.method protected beautyTypetoPosition(Lcom/android/camera/effect/BeautyParameters$Type;)I
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected initItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->getPageNameId()I

    move-result v1

    const v2, 0x7f0f006a

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->MAKEUP_3D_ITEM_MAP:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->REMODELING_3D_ITEM_MAP:Ljava/util/HashMap;

    .line 130
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/BeautyParameters;->getAdjustableTypes()[Lcom/android/camera/effect/BeautyParameters$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 131
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter$MakeupItem;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v6, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 152
    new-instance v0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment$1;-><init>(Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;)V

    return-object v0
.end method

.method protected initSelectedItem()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->loadSelectedPosition()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    .line 96
    iget v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->mSelectedParam:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/BeautyParameters$Type;

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/BeautyParameters;->setType(Lcom/android/camera/effect/BeautyParameters$Type;)V

    :cond_2
    return-void
.end method

.method protected provideItemHorizontalMargin()I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->mBeautyTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;->updateFocusBeautyItem()V

    :cond_0
    return-void
.end method
