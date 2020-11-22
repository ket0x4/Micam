.class public Lcom/android/camera/data/data/config/ComponentConfigFlash;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigFlash.java"


# instance fields
.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 3

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 54
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0800ad

    const v1, 0x7f0f026d

    const-string v2, "off"

    invoke-direct {p1, v0, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createItems(IILandroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xac

    if-ne p0, v0, :cond_0

    return-object p1

    .line 145
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    const v1, 0x7f0f026e

    const v2, 0x7f0f026d

    const-string v3, "off"

    const v4, 0x7f0800ae

    const v5, 0x7f0800ad

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    invoke-static {}, Lcom/android/camera/Device;->isSupportScreenLight()Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0xa3

    if-eq p0, p2, :cond_1

    const/16 p2, 0xa5

    if-eq p0, p2, :cond_1

    const/16 p2, 0xab

    if-ne p0, p2, :cond_2

    .line 151
    :cond_1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0, v5, v5, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const-string p2, "screen_light_on"

    invoke-direct {p0, v4, v4, v1, p2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1

    .line 164
    :cond_3
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 165
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0xa1

    const v6, 0x7f0f026f

    const-string v7, "on"

    const-string v8, "torch"

    const v9, 0x7f0800af

    if-eq p0, v0, :cond_a

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_a

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_a

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_a

    .line 173
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 174
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p2, v5, v5, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v0, "auto"

    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 181
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    const v10, 0x7f0f026c

    const v11, 0x7f0800ac

    invoke-direct {p2, v11, v11, v10, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_7
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p2

    if-nez p2, :cond_5

    .line 188
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p2, v4, v4, v1, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_8
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 194
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFlash()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 195
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p2, v4, v4, v1, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 200
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p2, v9, v9, v6, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 214
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 215
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p2, v5, v5, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    :cond_c
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 221
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p2, v9, v9, v6, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    :goto_2
    return-object p1
.end method

.method private getComponentValueInternal(I)Ljava/lang/String;
    .locals 2

    .line 111
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_scenemode_setting_key"

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public disableUpdate()Z
    .locals 0

    .line 285
    invoke-static {}, Lcom/android/camera/ThermalDetector;->instance()Lcom/android/camera/ThermalDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result p0

    return p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "off"

    return-object p0

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComponentValueWithOutClose(I)Ljava/lang/String;
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public getDisableReasonString()I
    .locals 0

    .line 290
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0f008d

    return p0

    :cond_0
    const p0, 0x7f0f008c

    return p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0270

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

    .line 132
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa8

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "pref_camera_flashmode_key"

    return-object p0

    .line 79
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unspecified flash"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :pswitch_1
    const-string p0, "pref_camera_video_flashmode_key"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 1

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 247
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0800ae

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "auto"

    .line 249
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f0800ac

    return p0

    :cond_1
    const-string p1, "off"

    .line 251
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p0, 0x7f0800ad

    return p0

    :cond_2
    const-string p1, "torch"

    .line 253
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 254
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7f0800af

    :goto_0
    return v0

    :cond_4
    const-string p1, "screen_light_on"

    .line 255
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 1

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 269
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0f0024

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "auto"

    .line 271
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f0f0021

    return p0

    :cond_1
    const-string p1, "off"

    .line 273
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p0, 0x7f0f0023

    return p0

    :cond_2
    const-string p1, "torch"

    .line 275
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 276
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7f0f0025

    :goto_0
    return v0

    :cond_4
    const-string p1, "screen_light_on"

    .line 277
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public isClosed(I)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method reInit(IILandroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 235
    invoke-static {p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->createItems(IILandroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public setClosed(ZI)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
