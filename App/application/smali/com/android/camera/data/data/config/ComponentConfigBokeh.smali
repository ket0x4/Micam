.class public Lcom/android/camera/data/data/config/ComponentConfigBokeh;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigBokeh.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private static createItems(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 49
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0f027e

    const v1, 0x7f08013b

    const-string v2, "off"

    invoke-direct {p1, v1, v1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0f027f

    const-string v2, "on"

    invoke-direct {p1, v1, v1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0221

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

    .line 42
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_bokeh_key"

    return-object p0
.end method

.method reInit(II)V
    .locals 0

    .line 72
    invoke-static {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->createItems(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public toggle(I)V
    .locals 2

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
