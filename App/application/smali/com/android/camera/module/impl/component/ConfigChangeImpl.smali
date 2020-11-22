.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigChangeImpl"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mLastAiSceneStateOn:Z

.field private mRecordingMutexElements:[I


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mLastAiSceneStateOn:Z

    .line 78
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Lcom/android/camera/module/BaseModule;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    return-object p0
.end method

.method private applyConfig(II)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc3

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualWaterMarkSwitch()V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBeautySwitch(I)V

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGenderAgeSwitch(I)V

    goto :goto_0

    .line 203
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRawSwitch()V

    goto :goto_0

    .line 199
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicMirrorSwitch(I)V

    goto :goto_0

    .line 183
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGroupSwitch(I)V

    goto :goto_0

    .line 187
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configScene(I)V

    goto :goto_0

    .line 195
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoFast()V

    goto :goto_0

    .line 191
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSlow()V

    goto :goto_0

    .line 179
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicFocusSwitch()V

    goto :goto_0

    .line 175
    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configHHTSwitch(I)V

    goto :goto_0

    .line 171
    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    goto :goto_0

    .line 167
    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    goto :goto_0

    .line 163
    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSoundSwitch(I)V

    goto :goto_0

    .line 159
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerSwitch()V

    goto :goto_0

    .line 151
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showSetting()V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiSceneSwitch(I)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showFilter()V

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPortraitSwitch(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeFlashAndUpdateUI(Lcom/android/camera/module/BaseModule;)V
    .locals 2

    .line 1384
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "onThermalNotification close flash mode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const-string v0, "off"

    .line 1387
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->setFlashMode(ILjava/lang/String;)V

    .line 1389
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1390
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v0, 0x7f0f008d

    invoke-static {p1, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1392
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v0, 0x7f0f008c

    invoke-static {p1, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    :goto_0
    const-string p1, ""

    .line 1395
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFlash(Ljava/lang/String;)V

    .line 1397
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    .line 1398
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xc1

    aput v1, p1, v0

    .line 1400
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_1
    return-void
.end method

.method private conflictWithFlashAndHdrAndBeauty()Z
    .locals 3

    .line 1122
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string v0, "pref_camera_hand_night_key"

    .line 1124
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1125
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    move p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1128
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    .line 1130
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 1132
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/4 v1, 0x4

    .line 1134
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configGroupSwitch(I)V

    .line 1135
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    move p0, v2

    :cond_1
    if-eqz p0, :cond_2

    .line 1140
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 1142
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_2
    return p0
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;
    .locals 1

    .line 74
    new-instance v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getBaseModule()Lcom/android/camera/module/BaseModule;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    :goto_0
    return-object p0
.end method

.method private getState(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 1027
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1033
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1030
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private hideTipMessage(I)V
    .locals 1

    .line 1185
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-lez p1, :cond_0

    .line 1186
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1187
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method private isAlive()Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reConfigSRIfFlashChanged()Z
    .locals 4

    .line 1162
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 1163
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 1164
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 1165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "auto"

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1170
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateSuperResolutionStatus(Z)V

    return v3

    .line 1167
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateSuperResolutionStatus(Z)V

    return v2
.end method

.method private reConfigSRIfHDRChanged()Z
    .locals 4

    .line 1148
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 1149
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 1150
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 1151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "auto"

    .line 1152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1156
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateSuperResolutionStatus(Z)V

    return v3

    .line 1153
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateSuperResolutionStatus(Z)V

    return v2
.end method

.method private showTips(I)V
    .locals 4

    .line 1333
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 1335
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 1336
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const v1, 0x7f090019

    .line 1338
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xfb

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 1340
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 1341
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    const/16 v0, 0xe6

    const/4 v3, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0xeb

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    const p1, 0x7f0f0154

    goto :goto_1

    :cond_3
    const p1, 0x7f0f0153

    .line 1345
    :goto_1
    invoke-interface {p0, v3, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    goto :goto_2

    :cond_4
    const p1, 0x7f0f014d

    .line 1351
    invoke-interface {p0, v3, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    :goto_2
    return-void
.end method

.method private trackBeautyChanged(Ljava/lang/String;)V
    .locals 2

    .line 1282
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1285
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1286
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1287
    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6a21\u5f0f"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u524d\u6444"

    goto :goto_0

    :cond_1
    const-string v0, "\u540e\u6444"

    :goto_0
    const-string v1, "\u524d\u540e\u6444"

    .line 1288
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u7f8e\u989c"

    .line 1291
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "beauty_changed"

    .line 1292
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    .line 1258
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1261
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_1

    .line 1263
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p4

    .line 1264
    invoke-static {p4}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "\u6a21\u5f0f"

    invoke-interface {p0, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p5, :cond_3

    .line 1268
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "\u524d\u6444"

    goto :goto_0

    :cond_2
    const-string p4, "\u540e\u6444"

    :goto_0
    const-string p5, "\u524d\u540e\u6444"

    .line 1267
    invoke-interface {p0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p3, :cond_4

    const-string p3, "on"

    goto :goto_1

    :cond_4
    const-string p3, "off"

    .line 1271
    :goto_1
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "counter"

    .line 1272
    invoke-static {p2, p1, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackDualWaterMarkChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string p1, "settings"

    const-string v0, "pref_dualcamera_watermark"

    .line 1276
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private trackFocusPeakChanged(Z)V
    .locals 6

    const-string v1, "manual_focus_peak_changed"

    const-string v2, "\u5cf0\u503c\u5bf9\u7126"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1252
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackGenderAgeChanged(Z)V
    .locals 6

    const-string v1, "gender_age_changed"

    const-string v2, "\u5e74\u9f84\u68c0\u6d4b"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 1242
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackGotoSettings()V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->trackGotoSettings()V

    :cond_0
    return-void
.end method

.method private trackGradienterChanged(Z)V
    .locals 6

    const-string v1, "gradienter_changed"

    const-string v2, "\u6c34\u5e73\u4eea"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1228
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackGroupChanged(Z)V
    .locals 6

    const-string v1, "group_shot_changed"

    const-string v2, "\u5408\u5f71\u4f18\u9009"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 1233
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackHHTChanged(Z)V
    .locals 6

    const-string v1, "hht_changed"

    const-string v2, "HHT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1238
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackMagicMirrorChanged(Z)V
    .locals 6

    const-string v1, "magic_mirror_changed"

    const-string v2, "\u9b54\u955c"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 1247
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private trackTiltShiftChanged(Ljava/lang/String;)V
    .locals 2

    .line 1216
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1219
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1220
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1221
    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6a21\u5f0f"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u79fb\u8f74"

    .line 1222
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "tiltshift_changed"

    .line 1223
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackTimerChanged(Ljava/lang/String;)V
    .locals 2

    .line 1202
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1205
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1206
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1207
    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6a21\u5f0f"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u524d\u6444"

    goto :goto_0

    :cond_1
    const-string v0, "\u540e\u6444"

    :goto_0
    const-string v1, "\u524d\u540e\u6444"

    .line 1208
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u5012\u8ba1\u65f6"

    .line 1211
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "timer_changed"

    .line 1212
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private trackVideoModeChanged(Ljava/lang/String;)V
    .locals 1

    .line 1192
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1195
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "\u6a21\u5f0f"

    .line 1196
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "counter"

    const-string v0, "video_mode_changed"

    .line 1197
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateAiScene(Z)V
    .locals 2

    .line 888
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mLastAiSceneStateOn:Z

    if-nez p0, :cond_0

    return-void

    .line 891
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result p0

    xor-int/lit8 v0, p1, 0x1

    if-ne p0, v0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    xor-int/2addr p1, p0

    .line 895
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(Z)V

    .line 897
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0xc9

    aput v1, p0, v0

    .line 898
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method private updateBokeh(Z)V
    .locals 5

    .line 872
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    .line 873
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const-string v1, "off"

    const-string v2, "on"

    if-eqz p1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 876
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 879
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object p0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 882
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xc8

    aput v1, p1, v0

    .line 883
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method private updateComponentFilter(Z)V
    .locals 2

    .line 1095
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object p0

    .line 1096
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1097
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    .line 1100
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xc4

    aput v1, p1, v0

    .line 1101
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 1104
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa2

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1105
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1106
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    :cond_0
    return-void
.end method

.method private updateComponentFlash(Ljava/lang/String;Z)V
    .locals 5

    .line 1046
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1050
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    .line 1051
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 1052
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 1054
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1055
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v3

    if-ne v3, p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1061
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "torch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "d"

    .line 1062
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 1067
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 v0, 0xc1

    aput v0, p1, p2

    .line 1068
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateFlashPreference()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateComponentFlash(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1039
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateComponentHdr(Z)Z
    .locals 7

    .line 1073
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1077
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 1078
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 1079
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    .line 1081
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1082
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v4

    if-ne v4, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0xc2

    if-nez p1, :cond_2

    .line 1085
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    if-eq v5, v6, :cond_2

    .line 1086
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 1088
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    const/4 p1, 0x1

    new-array v1, p1, [I

    aput v4, v1, v0

    .line 1089
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private updateSuperResolutionStatus(Z)V
    .locals 1

    .line 1111
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    .line 1112
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "pref_camera_super_resolution_key"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1114
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1116
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1118
    :goto_0
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method private updateTipMessage(III)V
    .locals 1

    .line 1179
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 1180
    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    return-void
.end method


# virtual methods
.method public varargs closeMutexElement(Ljava/lang/String;[I)V
    .locals 4

    .line 909
    iput-object p2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    const/4 v0, 0x0

    .line 910
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_6

    .line 911
    aget v1, p2, v0

    const/16 v2, 0xc1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc2

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc4

    if-eq v1, v2, :cond_3

    const/16 v2, 0xef

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    .line 925
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    goto :goto_1

    .line 932
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown mutex element"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 928
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateBokeh(Z)V

    goto :goto_1

    .line 922
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    goto :goto_1

    .line 919
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    goto :goto_1

    .line 916
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_1

    .line 913
    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public configAiSceneSwitch(I)V
    .locals 6

    .line 979
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v0

    .line 980
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configAiSceneSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    .line 982
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1011
    :cond_0
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(Z)V

    new-array p1, v4, [I

    aput v2, p1, v3

    .line 1012
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto :goto_1

    :cond_1
    const-string p1, "pref_camera_ai_scene_mode_key"

    const-string v5, "settings"

    if-nez v0, :cond_2

    .line 988
    iput-boolean v4, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mLastAiSceneStateOn:Z

    .line 989
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSwitchHint(I)V

    .line 990
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(Z)V

    const-string v0, "on"

    .line 991
    invoke-static {v5, p1, v0}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mLastAiSceneStateOn:Z

    const/16 v0, 0x8

    .line 995
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSwitchHint(I)V

    .line 996
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(Z)V

    const-string v0, "off"

    .line 997
    invoke-static {v5, p1, v0}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-array p1, v4, [I

    aput v2, p1, v3

    .line 1000
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 1002
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1004
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/4 v0, 0x4

    .line 1006
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configGroupSwitch(I)V

    .line 1007
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    .line 1018
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1020
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateAIASDPreference()V

    :cond_4
    return-void
.end method

.method public configBeautySwitch(I)V
    .locals 13

    .line 775
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 778
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/16 v4, 0xa9

    if-eq v0, v4, :cond_2

    const/16 v4, 0xa8

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    const/16 v5, 0xa3

    const/16 v6, 0xa1

    if-eq v0, v5, :cond_4

    const/16 v5, 0xa5

    if-eq v0, v5, :cond_4

    const/16 v5, 0xab

    if-eq v0, v5, :cond_4

    .line 792
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_4

    if-ne v0, v6, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v3

    :goto_3
    if-eqz v4, :cond_5

    move v7, v2

    goto :goto_4

    :cond_5
    move v7, v0

    :goto_4
    if-nez v5, :cond_6

    return-void

    .line 801
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v5

    .line 802
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v8

    .line 803
    invoke-virtual {v8}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v9

    .line 804
    invoke-virtual {v9, v7}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getNextValue(I)Ljava/lang/String;

    move-result-object v10

    .line 806
    sget-object v11, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v3

    .line 807
    sget-object v12, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v3

    xor-int/2addr v11, v12

    if-ne v3, p1, :cond_7

    .line 811
    invoke-virtual {v9, v7, v10}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setComponentValue(ILjava/lang/String;)V

    .line 812
    invoke-direct {p0, v10}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackBeautyChanged(Ljava/lang/String;)V

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v11, :cond_c

    if-eq v0, v2, :cond_c

    .line 817
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 818
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_video_speed_fast_key"

    .line 820
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string v1, "pref_video_speed_slow_key"

    .line 821
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 824
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v2}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    .line 825
    invoke-virtual {p1, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 826
    invoke-virtual {p1, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    .line 824
    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_5

    :cond_8
    if-ne v0, v6, :cond_9

    goto :goto_5

    .line 852
    :cond_9
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    .line 853
    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 852
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v2, 0xef

    if-nez p1, :cond_a

    .line 854
    invoke-virtual {v8, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 855
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithBeauty(Z)V

    .line 856
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateSuperResolutionStatus(Z)V

    .line 857
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_5

    .line 859
    :cond_a
    invoke-virtual {v8}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result p1

    if-ne p1, v2, :cond_b

    .line 860
    invoke-virtual {v8, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 863
    :cond_b
    invoke-virtual {v8}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 864
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfFlashChanged()Z

    move-result p1

    if-nez p1, :cond_c

    .line 865
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfHDRChanged()Z

    :cond_c
    :goto_5
    return-void
.end method

.method public configBokeh(Ljava/lang/String;)V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateBokehPreference()V

    .line 316
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    :cond_0
    return-void
.end method

.method public configDualWaterMarkSwitch()V
    .locals 3

    .line 747
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 748
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackDualWaterMarkChanged(Z)V

    .line 750
    sget-boolean v1, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f0151

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0156

    :goto_0
    if-eqz v0, :cond_1

    .line 752
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    const/4 v0, 0x0

    .line 754
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    const/4 v2, 0x2

    .line 756
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    const/4 v0, 0x1

    .line 759
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    .line 763
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 764
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    :cond_2
    return-void
.end method

.method public configFlash(Ljava/lang/String;)V
    .locals 0

    .line 288
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 289
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfFlashChanged()Z

    .line 293
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    .line 294
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateFlashPreference()V

    .line 297
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    :cond_1
    :goto_0
    return-void
.end method

.method public configFocusPeakSwitch(I)V
    .locals 2

    const-string v0, "pref_camera_peak_key"

    .line 733
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 735
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackFocusPeakChanged(Z)V

    :cond_0
    if-nez v0, :cond_1

    .line 739
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_0

    .line 740
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "manual"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 741
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public configGenderAgeSwitch(I)V
    .locals 2

    const-string v0, "pref_camera_show_gender_age_key"

    .line 705
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 707
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGenderAgeChanged(Z)V

    .line 711
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa6

    .line 712
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 713
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowGenderAndAge(Z)V

    .line 715
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    if-eqz v0, :cond_2

    .line 721
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 724
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi-face-watermark-format-string"

    .line 725
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    return-void
.end method

.method public configGradienterSwitch(I)V
    .locals 2

    const-string v0, "pref_camera_gradienter_key"

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 329
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGradienterChanged(Z)V

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onGradienterSwitched(Z)V

    .line 334
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setDrawGradienter(Z)V

    return-void
.end method

.method public configGroupSwitch(I)V
    .locals 2

    const-string v0, "pref_camera_groupshot_mode_key"

    .line 464
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 466
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGroupChanged(Z)V

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/CameraModule;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v1, "b"

    if-eqz v0, :cond_2

    const/16 v0, 0xeb

    .line 474
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showTips(I)V

    .line 476
    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->getGroupShotNum()I

    move-result v0

    .line 477
    invoke-virtual {p1, v0}, Lcom/android/camera/module/CameraModule;->initGroupShot(I)V

    const/4 v0, 0x0

    .line 478
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateSuperResolutionStatus(Z)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 480
    fill-array-data v0, :array_0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    const v0, 0x7f0f0153

    .line 489
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 490
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfFlashChanged()Z

    move-result v0

    if-nez v0, :cond_3

    .line 491
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfHDRChanged()Z

    .line 495
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_4

    .line 498
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->filterUiChange()V

    .line 500
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    return-void

    :array_0
    .array-data 4
        0xc1
        0xc2
        0xef
        0xc4
        0xc9
    .end array-data
.end method

.method public configHHTSwitch(I)V
    .locals 2

    const-string v0, "pref_camera_hand_night_key"

    .line 339
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 341
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackHHTChanged(Z)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0xe6

    .line 346
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showTips(I)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    .line 348
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    .line 349
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    if-eqz p1, :cond_5

    const/4 p0, 0x3

    .line 351
    invoke-virtual {p1, p0}, Lcom/android/camera/MutexModeManager;->setMutexModeMandatory(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0f014d

    .line 354
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    if-eqz p1, :cond_3

    .line 356
    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->clearMandatoryFlag()V

    .line 358
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 359
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    :cond_4
    const/4 p1, 0x0

    .line 361
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    .line 362
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public configHdr(Ljava/lang/String;)V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfHDRChanged()Z

    .line 304
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    .line 305
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    :cond_0
    return-void
.end method

.method public configMagicFocusSwitch()V
    .locals 2

    .line 457
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_ubifocus_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result v0

    .line 459
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    return-void
.end method

.method public configMagicMirrorSwitch(I)V
    .locals 2

    const-string v0, "pref_camera_magic_mirror_key"

    .line 661
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 663
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    .line 667
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xa6

    .line 668
    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 669
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowMagicMirror(Z)V

    .line 671
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    if-eqz v0, :cond_2

    .line 677
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 680
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi-face-watermark-format-string"

    .line 681
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    return-void
.end method

.method public configPortraitSwitch(I)V
    .locals 1

    const-string v0, "pref_camera_portrait_mode_key"

    .line 696
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    .line 698
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    :cond_0
    return-void
.end method

.method public configRawSwitch()V
    .locals 0

    .line 690
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    return-void
.end method

.method public configScene(I)V
    .locals 4

    const-string v0, "pref_camera_scenemode_setting_key"

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 508
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 512
    new-instance p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;

    invoke-direct {p1, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-interface {v1, v3, v2, p1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_1

    :cond_0
    if-ne p1, v2, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    const/4 v0, 0x0

    .line 532
    invoke-interface {v1, v3, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    .line 539
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 540
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    :cond_2
    return-void
.end method

.method public configSoundSwitch(I)V
    .locals 1

    const-string v0, "pref_audio_capture"

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->switchOff()V

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CameraModule;

    if-eqz p0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    .line 387
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 389
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingAudioCapture(Z)V

    return-void
.end method

.method public configTiltSwitch(I)V
    .locals 7

    .line 394
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/CameraModule;

    if-nez v0, :cond_0

    goto :goto_2

    .line 399
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_tilt_shift_mode"

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    .line 401
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 p1, 0xa0

    const-string v6, "circle"

    if-nez v2, :cond_3

    .line 414
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v3, p1, v6}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    move v4, v5

    goto :goto_1

    .line 420
    :cond_3
    invoke-virtual {v3, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    .line 419
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, "parallel"

    .line 421
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_4
    :goto_0
    move v4, v2

    goto :goto_1

    :cond_5
    const-string p1, "off"

    .line 425
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 433
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->onTiltShiftSwitched(Z)V

    .line 434
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    return-void

    .line 396
    :cond_6
    :goto_2
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "error!!! only the camera module could switch the tilt"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public configTimerSwitch()V
    .locals 3

    .line 439
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_audio_capture"

    .line 440
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    const/4 v2, 0x0

    .line 445
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingAudioCapture(Z)V

    .line 448
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getNextValue()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTimerChanged(Ljava/lang/String;)V

    const/16 p0, 0xa0

    .line 452
    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public configVideoFast()V
    .locals 11

    .line 546
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 552
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 554
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    const-string v4, "pref_video_speed_slow_key"

    const-string v5, "pref_video_speed_fast_key"

    const-string v6, "h"

    const v7, 0x7f0f0152

    const/4 v8, 0x0

    const/16 v9, 0xa9

    const/4 v10, 0x1

    if-eq v3, v9, :cond_1

    .line 555
    invoke-virtual {v1, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string v1, "fast"

    .line 556
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    new-array v1, v10, [I

    const/16 v3, 0xef

    aput v3, v1, v8

    .line 558
    invoke-virtual {p0, v6, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 561
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v9}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v3

    .line 562
    invoke-virtual {v3, v10}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 563
    invoke-virtual {v3, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    .line 561
    invoke-interface {v1, v3}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 565
    invoke-direct {p0, v10}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 567
    invoke-virtual {v0, v9}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 569
    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 573
    invoke-direct {p0, v1, v7, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    goto :goto_0

    .line 577
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 579
    invoke-virtual {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    const/16 v3, 0xa2

    .line 581
    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string v1, "normal"

    .line 582
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v3}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v6

    .line 584
    invoke-virtual {v6, v10}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 585
    invoke-virtual {v6, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    .line 583
    invoke-interface {v1, v6}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 587
    invoke-direct {p0, v8}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 589
    invoke-virtual {v0, v3}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 592
    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 597
    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/VideoModule;->setNeedRestartPreview(Z)V

    .line 599
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public configVideoSlow()V
    .locals 11

    .line 604
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 609
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 611
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    const-string v4, "pref_video_speed_slow_key"

    const-string v5, "pref_video_speed_fast_key"

    const-string v6, "h"

    const v7, 0x7f0f0155

    const/4 v8, 0x0

    const/16 v9, 0xa8

    const/4 v10, 0x1

    if-eq v3, v9, :cond_1

    .line 612
    invoke-virtual {v1, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string v1, "slow"

    .line 614
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    new-array v1, v10, [I

    const/16 v3, 0xef

    aput v3, v1, v8

    .line 616
    invoke-virtual {p0, v6, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 619
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v9}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v3

    .line 620
    invoke-virtual {v3, v10}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 621
    invoke-virtual {v3, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    .line 619
    invoke-interface {v1, v3}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 623
    invoke-direct {p0, v10}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 625
    invoke-virtual {v0, v9}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 627
    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 631
    invoke-direct {p0, v1, v7, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    goto :goto_0

    .line 634
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 636
    invoke-virtual {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    const/16 v3, 0xa2

    .line 638
    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string v1, "normal"

    .line 639
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v3}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v6

    .line 641
    invoke-virtual {v6, v10}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    .line 642
    invoke-virtual {v6, v8}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    .line 640
    invoke-interface {v1, v6}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 644
    invoke-direct {p0, v8}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 647
    invoke-virtual {v0, v3}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 650
    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 654
    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0, v10}, Lcom/android/camera/module/VideoModule;->setNeedRestartPreview(Z)V

    .line 656
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public conflictWithBeauty(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1301
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    move-result p0

    .line 1303
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 1304
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1305
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    :cond_0
    return-void
.end method

.method public onConfigChanged(I)V
    .locals 6

    .line 103
    invoke-static {p1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->isMutexConfig(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    if-ne v4, p1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-static {v4}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    .line 111
    invoke-direct {p0, v4, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    :cond_3
    const/4 v0, 0x1

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    return-void
.end method

.method public onThermalNotification(I)V
    .locals 4

    .line 1359
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1360
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1366
    invoke-static {p1}, Lcom/android/camera/ThermalDetector;->thermalConstrained(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1367
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "thermalConstrained"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1369
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isThermalThreshold()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1371
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 1373
    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "recording time is up to thermal threshold"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    if-eqz v3, :cond_5

    .line 1379
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeFlashAndUpdateUI(Lcom/android/camera/module/BaseModule;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public reCheckMutexConfigs()V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    .line 135
    invoke-static {v4}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x2

    .line 136
    invoke-direct {p0, v4, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public restoreAllMutexElement(Ljava/lang/String;)V
    .locals 4

    .line 939
    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 942
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_8

    .line 943
    aget v1, v1, v0

    const/16 v2, 0xc1

    if-eq v1, v2, :cond_7

    const/16 v2, 0xc2

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc4

    if-eq v1, v2, :cond_4

    const/16 v2, 0xef

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_1

    .line 959
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    goto :goto_2

    .line 965
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown mutex element"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 962
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateBokeh(Z)V

    goto :goto_2

    .line 956
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    goto :goto_2

    .line 953
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    goto :goto_2

    .line 948
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xab

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    move v1, p1

    .line 950
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_2

    .line 945
    :cond_7
    invoke-direct {p0, v3, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_8
    iput-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    return-void
.end method

.method public showFilter()V
    .locals 2

    .line 272
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez p0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    .line 278
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 279
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    const v0, 0x7f090019

    .line 281
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    .line 282
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    return-void
.end method

.method public showSetting()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 242
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const-string v2, "from_where"

    .line 241
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "IsCaptureIntent"

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 251
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f033a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ":miui:starting_window_label"

    .line 250
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "StartActivityWhenLocked"

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 259
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGotoSettings()V

    return-void

    .line 235
    :cond_3
    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "module status is not ready ignore this request. mActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 93
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateComponentBeauty(Z)V
    .locals 4

    .line 1315
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    .line 1316
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa8

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0xa2

    .line 1322
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1323
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    .line 1326
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 1327
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 1328
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    :cond_3
    :goto_0
    return-void
.end method
