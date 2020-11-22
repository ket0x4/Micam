.class public Lcom/android/camera/data/data/config/ComponentConfigFilter;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigFilter.java"


# instance fields
.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public clearFilterSelected(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 87
    invoke-static {}, Lcom/android/camera/constant/ModeConstant;->getAllModes()[I

    move-result-object v0

    .line 88
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 89
    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 56
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0242

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_shader_coloreffect_key"

    return-object p0
.end method

.method public isClosed(I)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public mapToItems(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FilterInfo;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FilterInfo;

    .line 77
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 78
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v3

    .line 79
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getIconResId()I

    move-result v4

    .line 80
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getNameResId()I

    move-result v5

    .line 81
    invoke-virtual {v0}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClosed(ZI)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigFilter;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method
