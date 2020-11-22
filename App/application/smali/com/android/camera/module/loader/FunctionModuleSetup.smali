.class public Lcom/android/camera/module/loader/FunctionModuleSetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionModuleSetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/BaseModule;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method

.method private switchOffBeautyInVideoModule()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0xa2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 161
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object p0

    const/16 v1, 0xa9

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 162
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object p0

    const/16 v1, 0xa8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
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

    .line 42
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    .line 52
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    const/16 v2, 0xe1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {v0, v2}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 56
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->reset()V

    .line 60
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    .line 63
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    .line 65
    iget v5, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/4 v6, 0x0

    const-string v7, "pref_video_speed_slow_key"

    const-string v8, "pref_video_speed_fast_key"

    const/4 v9, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 83
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    if-nez v5, :cond_2

    .line 84
    sget-object v5, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getFrontMuxCameraId()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 87
    sget-object v5, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    sget-object v5, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :goto_0
    const-string v4, "pref_camera_first_portrait_use_hint_shown_key"

    .line 94
    invoke-virtual {v3, v4, v9}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 96
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/android/camera/Camera;->showNewBie(I)Z

    .line 98
    invoke-virtual {v3}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 99
    invoke-interface {v3, v4, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 100
    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 102
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/zxing/QRCodeManager;->needScanQRCode(Z)V

    return-object p1

    .line 112
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionModuleSetup;->switchOffBeautyInVideoModule()V

    .line 113
    invoke-virtual {v4, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionModuleSetup;->switchOffBeautyInVideoModule()V

    .line 118
    invoke-virtual {v4, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string v5, "pref_camera_manual_mode_key"

    .line 78
    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const-string v5, "pref_camera_square_mode_key"

    .line 123
    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const-string v4, "pref_camera_first_ai_scene_use_hint_shown_key"

    .line 70
    invoke-virtual {v3, v4, v9}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->showNewBie(I)Z

    return-object p1

    .line 108
    :pswitch_7
    invoke-virtual {v4, v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 130
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportStartupOptimize()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 134
    :cond_5
    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 136
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 138
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 142
    :cond_6
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_7

    .line 148
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/zxing/QRCodeManager;->needScanQRCode(Z)V

    goto :goto_2

    .line 144
    :cond_7
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isScanQRCode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/zxing/QRCodeManager;->needScanQRCode(Z)V

    .line 145
    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    :goto_2
    return-object p1

    .line 131
    :cond_8
    :goto_3
    invoke-static {v0, v2}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionModuleSetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
