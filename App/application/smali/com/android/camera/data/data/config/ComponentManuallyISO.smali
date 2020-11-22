.class public Lcom/android/camera/data/data/config/ComponentManuallyISO;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyISO.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/camera/Device;->isSupportedContinousIsoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030025

    .line 74
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getIds(I)[I

    move-result-object v0

    const v1, 0x7f030026

    .line 75
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getStrings(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v0, 0x7f030023

    .line 77
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getIds(I)[I

    move-result-object v0

    const v1, 0x7f030024

    .line 78
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getStrings(I)[Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_1

    aget v5, v0, v3

    .line 82
    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    aget-object v7, v1, v4

    const/4 v8, -0x1

    invoke-direct {v6, v8, v8, v5, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected checkValueValid(Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-static {}, Lcom/android/camera/Device;->isSupportedContinousIsoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f030026

    .line 51
    invoke-static {p1, p0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f030024

    .line 53
    invoke-static {p1, p0}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const p0, 0x7f0f02b1

    .line 37
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f02b0

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

    .line 42
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_qc_camera_iso_key"

    return-object p0
.end method

.method protected resetComponentValue(I)V
    .locals 1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
