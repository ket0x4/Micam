.class public Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningSceneValue.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method private filterUnsupportItems(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedSceneModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 66
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 68
    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void

    .line 59
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private initItems()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080142

    const v3, 0x7f0f0328

    const-string v4, "auto"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080152

    const v3, 0x7f0f0331

    const-string v4, "portrait"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f08014c

    const v3, 0x7f0f032d

    const-string v4, "landscape"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080156

    const v3, 0x7f0f0333

    const-string v4, "sports"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f08014e

    const v3, 0x7f0f032e

    const-string v4, "night"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f08014f

    const v3, 0x7f0f032f

    const-string v4, "night-portrait"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080146

    const v3, 0x7f0f032a

    const-string v4, "beach"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080154

    const v3, 0x7f0f0332

    const-string v4, "snow"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080158

    const v3, 0x7f0f0334

    const-string v4, "sunset"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080148

    const v3, 0x7f0f032b

    const-string v4, "fireworks"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080144

    const v3, 0x7f0f0329

    const-string v4, "backlight"

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08014a

    const v2, 0x7f0f032c

    const-string v3, "flowers"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "auto"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0335

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

    .line 47
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_scenemode_key"

    return-object p0
.end method

.method public init(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->initItems()V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->filterUnsupportItems(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
