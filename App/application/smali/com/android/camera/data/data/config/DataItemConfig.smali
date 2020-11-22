.class public Lcom/android/camera/data/data/config/DataItemConfig;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemConfig.java"


# instance fields
.field private mCameraId:I

.field private mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

.field private mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

.field private mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

.field private mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

.field private mIntentType:I

.field private mIsTimeOut:Z

.field private mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

.field private mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    .line 64
    iput p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    .line 65
    iput-boolean p3, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    .line 67
    new-instance p1, Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    .line 68
    new-instance p1, Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    .line 69
    new-instance p1, Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    .line 70
    new-instance p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    return-void
.end method

.method public static provideLocalId(II)I
    .locals 0

    if-nez p1, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x64

    return p0
.end method


# virtual methods
.method public getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    return-object p0
.end method

.method public getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    return-object p0
.end method

.method public getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    return-object p0
.end method

.method public getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    return-object p0
.end method

.method public getLastSelect()I
    .locals 2

    const-string v0, "pref_camera_lastselect_beauty_hdr_key"

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    return-object p0
.end method

.method public getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    return-object p0
.end method

.method public getSupportedExtraConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 0

    .line 133
    iget p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {p1, p0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedExtraConfigs(II)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 1

    .line 129
    iget v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {p1, p0, v0}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedTopConfigs(ILcom/android/camera/data/data/config/DataItemConfig;I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object p0

    return-object p0
.end method

.method public initAfterCameraOpen(ILandroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->reInit(IILandroid/hardware/Camera$Parameters;)V

    .line 94
    iget-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    iget v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->reInit(II)V

    .line 95
    iget-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    iget p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-virtual {p2, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->reInit(II)V

    return-void
.end method

.method public isTimeOut()Z
    .locals 0

    .line 220
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    return p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    iget p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    invoke-static {v1, p0}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reConfigBokehIfHdrChanged(ILjava/lang/String;)Z
    .locals 1

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 234
    iget-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 235
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reConfigFlashIfHdrChanged(ILjava/lang/String;)Z
    .locals 5

    const-string v0, "off"

    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "auto"

    .line 161
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "on"

    .line 163
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "torch"

    .line 164
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "screen_light_on"

    .line 167
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 165
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 172
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public reConfigHdrIfBokehChanged(ILjava/lang/String;)Z
    .locals 1

    const-string v0, "on"

    .line 244
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 245
    iget-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 246
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reConfigHdrIfFlashChanged(ILjava/lang/String;)Z
    .locals 7

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 188
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "live"

    const/4 v5, 0x0

    const-string v6, "off"

    if-eqz v2, :cond_2

    const-string p2, "normal"

    .line 189
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 190
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 191
    :cond_0
    iget p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v2

    if-ne p2, v2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v5

    :goto_0
    invoke-static {p2}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object v6, v1

    goto :goto_2

    :cond_2
    const-string v1, "on"

    .line 194
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "screen_light_on"

    .line 195
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "torch"

    .line 199
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 200
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 201
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    .line 196
    :cond_4
    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_2
    if-eqz v6, :cond_9

    .line 206
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    .line 209
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p2

    invoke-virtual {p2, p1, v6}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    return v5

    :cond_8
    return v3

    :cond_9
    :goto_3
    return v5
.end method

.method public resetTimeOut()V
    .locals 1

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    return-void
.end method

.method public setLastSelect(I)V
    .locals 1

    const-string v0, "pref_camera_lastselect_beauty_hdr_key"

    .line 258
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setTimeOut(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIsTimeOut:Z

    return-void
.end method

.method public supportBokeh(II)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->reInit(II)V

    .line 147
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportFlash()Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportHdr(II)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->reInit(II)V

    .line 142
    iget-object p0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
