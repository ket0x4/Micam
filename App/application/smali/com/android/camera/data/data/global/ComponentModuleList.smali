.class public Lcom/android/camera/data/data/global/ComponentModuleList;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentModuleList.java"


# instance fields
.field private mIntentType:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedFun()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f0199

    const/16 v4, 0xa1

    .line 62
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    iget v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    if-nez v2, :cond_2

    .line 67
    :cond_1
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f01a0

    const/16 v4, 0xa2

    .line 68
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    iget v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v3, 0x3

    const/16 v4, 0xa3

    const v5, 0x7f0f0198

    if-ne v2, v3, :cond_3

    .line 72
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 73
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v1, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 72
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    if-nez v2, :cond_9

    .line 78
    :cond_4
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 79
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v1, v5, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortrait()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v2, :cond_6

    .line 83
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f019d

    const/16 v4, 0xab

    .line 84
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/feature/DataItemFeature;->isSupportedSuperNightScene()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v2, :cond_7

    .line 91
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f032e

    const/16 v4, 0xac

    .line 92
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_7
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f019f

    const/16 v4, 0xa5

    .line 96
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPanorama()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 99
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f019c

    const/16 v4, 0xa6

    .line 100
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_8
    iget p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez p0, :cond_9

    .line 105
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f0f019a

    const/16 v3, 0xa7

    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 105
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    return-object v0

    .line 55
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "parse intent first!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

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

    .line 43
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pref_camera_mode_key_intent_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMode(I)I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public reInit()V
    .locals 0

    return-void
.end method

.method public setIntentType(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    .line 123
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
