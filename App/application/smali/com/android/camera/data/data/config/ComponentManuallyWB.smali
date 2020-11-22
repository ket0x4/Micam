.class public Lcom/android/camera/data/data/config/ComponentManuallyWB;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyWB.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, -0x1

    const v2, 0x7f0f0381

    const-string v3, "auto"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, -0x2

    const v2, 0x7f080025

    const v3, 0x7f080175

    const-string v4, "incandescent"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080027

    const v3, 0x7f08017b

    const-string v4, "daylight"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080024

    const v3, 0x7f080172

    const-string v4, "fluorescent"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080023

    const v3, 0x7f08016f

    const-string v4, "cloudy-daylight"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/android/camera/Device;->supportCameraWBManualValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080026

    const v3, 0x7f080178

    const-string v4, "manual"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getCustomWB()I
    .locals 2

    .line 106
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string v0, "pref_qc_manual_whitebalance_k_value_key"

    const/16 v1, 0x1068

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0390

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_whitebalance_key"

    return-object p0
.end method

.method public setCustomWB(I)V
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "pref_qc_manual_whitebalance_k_value_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
