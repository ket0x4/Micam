.class public Lcom/android/camera/data/data/config/SupportedConfigFactory;
.super Ljava/lang/Object;
.source "SupportedConfigFactory.java"


# static fields
.field public static final MutexConfigs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 74
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    return-void

    :array_0
    .array-data 4
        0xe5
        0xec
        0xeb
        0xe4
        0xe6
        0xea
        0xc3
        0xee
        0xc7
    .end array-data
.end method

.method public static getConfigKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xc7

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xee

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 147
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unknown config item"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "pref_camera_magic_mirror_key"

    return-object p0

    :pswitch_1
    const-string p0, "pref_camera_groupshot_mode_key"

    return-object p0

    :pswitch_2
    const-string p0, "pref_camera_scenemode_setting_key"

    return-object p0

    :pswitch_3
    const-string p0, "pref_camera_hand_night_key"

    return-object p0

    :pswitch_4
    const-string p0, "pref_camera_gradienter_key"

    return-object p0

    :pswitch_5
    const-string p0, "pref_camera_tilt_shift_mode"

    return-object p0

    :cond_0
    const-string p0, "pref_camera_show_gender_age_key"

    return-object p0

    :cond_1
    const-string p0, "pref_camera_ai_scene_mode_key"

    return-object p0

    :cond_2
    const-string p0, "pref_camera_peak_key"

    return-object p0

    .line 139
    :cond_3
    sget-object p0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe4
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getSupportedExtraConfigs(II)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 8

    .line 328
    new-instance v0, Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-direct {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>()V

    const/16 v1, 0xa1

    const/16 v2, 0xef

    const/16 v3, 0xe1

    if-eq p0, v1, :cond_13

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_f

    const/16 v1, 0xab

    const/16 v4, 0xee

    const/16 v5, 0xec

    const/4 v6, 0x1

    const/16 v7, 0xe2

    if-eq p0, v1, :cond_c

    packed-switch p0, :pswitch_data_0

    .line 338
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/16 v1, 0xeb

    const/16 v3, 0xa3

    const/16 v7, 0xa5

    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    .line 380
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eq p0, v7, :cond_1

    .line 381
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_1
    if-eq p0, v7, :cond_2

    if-ne p0, v3, :cond_14

    .line 384
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAgeDetection()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 385
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 388
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 389
    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    .line 342
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xe4

    .line 343
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 346
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xe5

    .line 347
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 350
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportScene()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 351
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0xea

    .line 352
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_7
    if-eq p0, v7, :cond_8

    .line 357
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 358
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 361
    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isHideHHTMenu()Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0xe6

    .line 362
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_9
    if-eq p0, v7, :cond_a

    if-ne p0, v3, :cond_b

    .line 366
    :cond_a
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/android/camera/Device;->isDisableBackSkinBeautify()Z

    move-result p0

    if-nez p0, :cond_b

    .line 367
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 374
    :cond_b
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0xf2

    .line 375
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    .line 433
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    .line 398
    :cond_c
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    if-ne p1, v6, :cond_e

    .line 402
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 403
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAgeDetection()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 404
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 407
    :cond_d
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 408
    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    :cond_e
    if-nez p1, :cond_14

    .line 411
    invoke-static {}, Lcom/android/camera/CameraSettings;->hasBeautyMenuInBackPortraitMode()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 412
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    :cond_f
    :pswitch_1
    if-eqz p1, :cond_10

    goto :goto_0

    .line 446
    :cond_10
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 447
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastMotion()Z

    move-result p0

    if-eqz p0, :cond_11

    const/16 p0, 0xe9

    .line 448
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 450
    :cond_11
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xe8

    .line 451
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 453
    :cond_12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 454
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    .line 462
    :cond_13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_14

    if-nez p1, :cond_14

    .line 463
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 464
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_14
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static final getSupportedTopConfigs(ILcom/android/camera/data/data/config/DataItemConfig;I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 11

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xab

    const/16 v2, 0xc1

    if-ne p0, v1, :cond_0

    .line 163
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/16 v1, 0xc2

    const/16 v2, 0xc9

    const/16 v3, 0xe1

    const/16 v4, 0xc5

    const/16 v5, 0xc4

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch p0, :pswitch_data_0

    .line 174
    :pswitch_0
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 189
    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isPortraitModeSupportAiScene()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    .line 190
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontAiScene()Z

    move-result p0

    if-eqz p0, :cond_3

    if-ne p2, v7, :cond_3

    .line 191
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->supportFilterInBackPortraitMode()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p0

    if-eq p2, p0, :cond_5

    .line 194
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 220
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object p1

    .line 221
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 222
    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const/16 p0, 0xc7

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 270
    :pswitch_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 245
    :pswitch_4
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_9

    .line 249
    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontAiScene()Z

    move-result v1

    if-eqz v1, :cond_a

    if-ne p2, v7, :cond_a

    .line 250
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_a
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh(II)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xc8

    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_5
    if-nez p2, :cond_e

    .line 203
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v8

    if-eq v8, v6, :cond_e

    .line 205
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFastMotion()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 211
    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 260
    :pswitch_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p0

    if-ne p2, p0, :cond_f

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 262
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 177
    :cond_10
    :goto_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz p2, :cond_12

    .line 178
    :cond_11
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontAiScene()Z

    move-result v1

    if-eqz v1, :cond_13

    if-ne p2, v7, :cond_13

    .line 179
    :cond_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_13
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh(II)Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0xc8

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_2
    new-instance p0, Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>(I)V

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1c

    const/4 v1, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/16 v10, 0xc6

    if-eq p2, v7, :cond_1b

    if-eq p2, v6, :cond_19

    if-eq p2, v8, :cond_17

    if-eq p2, v4, :cond_16

    if-eq p2, v3, :cond_15

    goto/16 :goto_3

    :cond_15
    new-array p1, p1, [I

    .line 317
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v7

    aput v10, p1, v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v8

    aput v10, p1, v4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :cond_16
    new-array p1, p1, [I

    .line 312
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v9

    aput v10, p1, v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v6

    aput v10, p1, v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v4

    aput v10, p1, v3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    .line 301
    :cond_17
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_18

    new-array p1, p1, [I

    aput v10, p1, v9

    aput v10, p1, v7

    .line 303
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v6

    aput v10, p1, v8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v4

    aput v10, p1, v3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :cond_18
    new-array p1, p1, [I

    .line 306
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v9

    aput v10, p1, v7

    aput v10, p1, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v8

    aput v10, p1, v4

    aput v10, p1, v3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    .line 293
    :cond_19
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v5, :cond_1a

    new-array p1, p1, [I

    aput v10, p1, v9

    aput v10, p1, v7

    aput v10, p1, v6

    .line 294
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v8

    aput v10, p1, v4

    aput v10, p1, v3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto :goto_3

    :cond_1a
    new-array p1, p1, [I

    .line 296
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v9

    aput v10, p1, v7

    aput v10, p1, v6

    aput v10, p1, v8

    aput v10, p1, v4

    aput v10, p1, v3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto :goto_3

    :cond_1b
    new-array p1, p1, [I

    aput v10, p1, v9

    aput v10, p1, v7

    aput v10, p1, v6

    aput v10, p1, v8

    aput v10, p1, v4

    aput v10, p1, v3

    .line 288
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto :goto_3

    :cond_1c
    new-array p1, p1, [I

    .line 283
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
    .end array-data
.end method

.method public static isMutexConfig(I)Z
    .locals 5

    .line 116
    sget-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
