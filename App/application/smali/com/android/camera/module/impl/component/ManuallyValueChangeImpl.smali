.class public Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;
.super Ljava/lang/Object;
.source "ManuallyValueChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private trackAwbChanged(Ljava/lang/String;)V
    .locals 1

    .line 151
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "\u767d\u5e73\u8861"

    .line 155
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "manual_awb_changed"

    .line 156
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackExposureTimeChanged(Ljava/lang/String;)V
    .locals 1

    .line 161
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 165
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5feb\u95e8"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "manual_exposure_time_changed"

    .line 166
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackIsoChanged(Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 174
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 175
    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->isoToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u611f\u5149\u5ea6"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "manual_iso_changed"

    .line 176
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackLensChanged(Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "\u955c\u5934"

    .line 185
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "manual_lens_changed"

    .line 186
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getBaseModule()Lcom/android/camera/module/BaseModule;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    return-object p0
.end method

.method public onDualLensNotifyToTele()V
    .locals 3

    .line 120
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "optical-zoom-to-tele"

    const-string v2, "true"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V
    .locals 2

    .line 136
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wide"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "tele"

    .line 139
    :cond_0
    invoke-virtual {p1, p2, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 141
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackLensChanged(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onCameraPickerClicked(I)Z

    return-void
.end method

.method public onDualZoomValueChanged(IZ)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onZoomRatioChanged(IZ)V

    return-void
.end method

.method public onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackExposureTimeChanged(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    const/16 p2, 0xa7

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMappingFocusMode(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0xa7

    if-nez p2, :cond_2

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 76
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 82
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p3

    const/16 v1, 0xac

    invoke-virtual {p3, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p3

    check-cast p3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 83
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc7

    if-eqz p2, :cond_0

    .line 85
    invoke-interface {p3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeConfigItem(I)V

    .line 86
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {p3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->insertConfigItem(I)V

    .line 89
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    const-string p3, "pref_camera_peak_key"

    invoke-virtual {p2, p3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 91
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 97
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xa6

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;

    if-eqz p2, :cond_2

    .line 99
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->updateFocusMode()V

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackIsoChanged(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    const/16 p2, 0xa7

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const-string p1, "pref_qc_manual_whitebalance_k_value_key"

    goto :goto_0

    :cond_0
    const/16 v0, 0xa7

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getKey(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_1

    const-string p2, "manual"

    .line 63
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->trackAwbChanged(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onSettingValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
