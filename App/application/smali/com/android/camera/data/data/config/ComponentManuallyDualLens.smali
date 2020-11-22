.class public Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyDualLens.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 64
    invoke-static {}, Lcom/android/camera/Device;->isViceBackRemoasicCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f0393

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0396

    :goto_0
    const/4 v2, -0x1

    const-string v3, "wide"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 62
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 69
    invoke-static {}, Lcom/android/camera/Device;->isViceBackRemoasicCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0392

    goto :goto_1

    :cond_1
    const v1, 0x7f0f0394

    :goto_1
    const-string v3, "tele"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 67
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "wide"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0399

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

    .line 53
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa7

    if-eq p1, p0, :cond_0

    const-string p0, "pref_camera_zoom_mode_key"

    return-object p0

    :cond_0
    const-string p0, "pref_camera_manually_lens"

    return-object p0
.end method
