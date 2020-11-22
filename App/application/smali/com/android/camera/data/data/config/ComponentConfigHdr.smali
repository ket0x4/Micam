.class public Lcom/android/camera/data/data/config/ComponentConfigHdr;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHdr.java"


# instance fields
.field private mHdrDefaultValue:Ljava/lang/String;

.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 3

    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const-string p1, "off"

    .line 31
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mHdrDefaultValue:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 50
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0800b9

    const v2, 0x7f0f0286

    invoke-direct {v0, v1, v1, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa1

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 155
    invoke-static {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForCaptureMode(Ljava/util/List;I)V

    goto :goto_0

    .line 163
    :cond_0
    :pswitch_0
    sget-boolean p0, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 164
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f0f03d7

    const v1, 0x7f0800b9

    const-string v2, "off"

    invoke-direct {p0, v1, v1, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f0f03d8

    const v1, 0x7f0800b8

    const-string v2, "on"

    invoke-direct {p0, v1, v1, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    :pswitch_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultFromConfig()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    invoke-static {p0}, Lcom/android/camera/Device;->getHDRDefaultValue(Z)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "off"

    return-object p0

    :cond_0
    const-string p0, "normal"

    return-object p0

    :cond_1
    const-string p0, "live"

    return-object p0

    :cond_2
    const-string p0, "auto"

    return-object p0

    :cond_3
    const-string p0, "on"

    return-object p0
.end method

.method private static initForBackCaptureMode(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-static {}, Lcom/android/camera/Device;->isSupportBackHDR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0f0286

    const v2, 0x7f0800b9

    const-string v3, "off"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0f0283

    const v2, 0x7f0800b6

    const-string v3, "auto"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    const-string v1, "normal"

    const v2, 0x7f0800b8

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 242
    :cond_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_3

    .line 243
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f0285

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0f0284

    const v2, 0x7f0800b7

    const-string v3, "live"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_4
    :goto_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f03d8

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private static initForCaptureMode(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;I)V"
        }
    .end annotation

    .line 194
    invoke-static {p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isFrontCamera(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    invoke-static {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForFrontCaptureMode(Ljava/util/List;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForBackCaptureMode(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private static initForFrontCaptureMode(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0f0286

    const v2, 0x7f0800b9

    const-string v3, "off"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 207
    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0f0283

    const v2, 0x7f0800b6

    const-string v3, "auto"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0f03d8

    const v2, 0x7f0800b8

    const-string v3, "normal"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static isFrontCamera(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "off"

    return-object p0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComponentValueWithOutClose(I)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mHdrDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f028b

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

    .line 126
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa0

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa2

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa8

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_0

    const-string p0, "pref_camera_hdr_key"

    return-object p0

    :cond_0
    const-string p0, "pref_video_hdr_key"

    return-object p0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unspecified hdr"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 1

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "off"

    .line 265
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f0800b9

    return p0

    :cond_0
    const-string p1, "auto"

    .line 267
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f0800b6

    return p0

    :cond_1
    const-string p1, "normal"

    .line 269
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0800b8

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "live"

    .line 271
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p0, 0x7f0800b7

    return p0

    :cond_3
    const-string p1, "on"

    .line 273
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 1

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "off"

    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f0f002d

    return p0

    :cond_0
    const-string p1, "auto"

    .line 290
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f0f002a

    return p0

    :cond_1
    const-string p1, "normal"

    .line 292
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0f002e

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "live"

    .line 294
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p0, 0x7f0f002b

    return p0

    :cond_3
    const-string p1, "on"

    .line 296
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public isClosed(I)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isLastOn(I)Z
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "off"

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method reInit(II)V
    .locals 1

    .line 132
    invoke-static {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->createItems(II)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const-string p2, "off"

    .line 134
    iput-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mHdrDefaultValue:Ljava/lang/String;

    const/16 p2, 0xa3

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa5

    if-ne p1, p2, :cond_2

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultFromConfig()Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 138
    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mHdrDefaultValue:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setClosed(ZI)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 121
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
