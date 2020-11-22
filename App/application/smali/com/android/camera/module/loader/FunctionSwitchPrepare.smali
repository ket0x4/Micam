.class public Lcom/android/camera/module/loader/FunctionSwitchPrepare;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionSwitchPrepare.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/Camera;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# instance fields
.field private mResetType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    .line 42
    iput p2, p0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mResetType:I

    return-void
.end method

.method private reconfigureData()V
    .locals 11

    .line 95
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v1

    .line 97
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 99
    iget v3, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    .line 100
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v3

    .line 101
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v4

    const/4 v5, 0x1

    .line 99
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/camera/data/backup/DataBackUp;->backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V

    .line 103
    iget v3, p0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->mResetType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto/16 :goto_1

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 109
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v4

    .line 110
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v7, 0xa3

    const/4 v8, 0x0

    if-eq v6, v7, :cond_1

    const/16 v7, 0xa5

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v8, v6}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 117
    :goto_0
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    .line 119
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v6

    .line 120
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "torch"

    .line 122
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 123
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v9}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 127
    :cond_2
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->isTimeOut()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 128
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "auto"

    .line 130
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 131
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v7

    iget v10, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v10}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v7, v10}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 135
    :cond_3
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "off"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 137
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v9}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 141
    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v7

    .line 142
    iget v9, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v7, v9}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "on"

    .line 143
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 144
    iget v9, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v7, v9}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getKey(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v7, v10}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v9, v7}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_5
    const-string v7, "pref_camera_zoom_key"

    .line 151
    invoke-interface {v3, v7}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v7, "pref_camera_exposure_key"

    .line 152
    invoke-interface {v3, v7}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 153
    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 156
    iget v3, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v7

    invoke-interface {v1, v2, v3, v7}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    .line 159
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v3, 0xab

    if-ne v1, v3, :cond_8

    .line 161
    invoke-virtual {v4, v5, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 162
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v5, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 163
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-nez v0, :cond_6

    .line 164
    sget-object p0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_6
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v8, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 167
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getFrontMuxCameraId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    .line 168
    sget-object p0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_7
    sget-object p0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/Camera;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p0, 0xe8

    .line 53
    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xe9

    .line 59
    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 66
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_2

    .line 68
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    .line 73
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 74
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/AnimationComposite;->setClickEnable(Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->reconfigureData()V

    .line 82
    invoke-virtual {p1}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 84
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    .line 85
    invoke-interface {p1}, Lcom/android/camera/module/Module;->prepareSwitchCamera()V

    .line 86
    invoke-interface {p1}, Lcom/android/camera/module/Module;->closeCamera()V

    .line 87
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/module/BaseModule;->prepareOpenCamera(II)V

    .line 91
    invoke-static {p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public getWorkThread()Lio/reactivex/Scheduler;
    .locals 0

    .line 47
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method
