.class public Lcom/android/camera/module/loader/FunctionCameraPrepare;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraPrepare.java"


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
.field private baseModule:Lcom/android/camera/module/BaseModule;

.field private mLastMode:I

.field private mResetType:I


# direct methods
.method public constructor <init>(IIILcom/android/camera/module/BaseModule;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    .line 46
    iput p2, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    .line 47
    iput p3, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    .line 48
    iput-object p4, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    return-void
.end method

.method private reconfigureData()V
    .locals 15

    .line 100
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 104
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v3

    .line 106
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    .line 110
    invoke-virtual {v2}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 111
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v5

    const-string v6, "pref_camera_zoom_key"

    .line 114
    invoke-interface {v2, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_camera_exposure_key"

    .line 115
    invoke-interface {v2, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 117
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "torch"

    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v8}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 124
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "pref_focus_position_key"

    .line 125
    invoke-interface {v2, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_qc_camera_exposuretime_key"

    .line 126
    invoke-interface {v2, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 130
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isLabOptionsVisible()Z

    move-result v6

    if-nez v6, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_camera_facedetection_key"

    invoke-interface {v0, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_camera_portrait_with_facebeauty_key"

    .line 134
    invoke-interface {v0, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_camera_facedetection_auto_hidden_key"

    .line 135
    invoke-interface {v0, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_camera_parallel_process_enable_key"

    .line 136
    invoke-interface {v0, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_camera_super_resolution_for_lab_key"

    .line 137
    invoke-interface {v0, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 141
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFrontMirror()Ljava/lang/String;

    move-result-object v6

    const-string v8, "auto"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_front_mirror_key"

    invoke-interface {v0, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 145
    :cond_3
    iget v6, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    const/16 v9, 0xa3

    const/16 v10, 0xa7

    const/16 v11, 0xa5

    const/16 v12, 0xab

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v6, v14, :cond_21

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1b

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1b

    goto/16 :goto_8

    .line 335
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "use switch prepare"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    .line 152
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v13, v6}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 153
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v6

    .line 156
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v8, 0xa2

    const/16 v9, 0xa6

    if-eq v7, v8, :cond_8

    if-eq v7, v12, :cond_7

    if-eq v7, v9, :cond_6

    if-eq v7, v10, :cond_6

    .line 175
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v7

    goto :goto_0

    :cond_6
    move v7, v13

    goto :goto_0

    .line 162
    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 163
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v7

    goto :goto_0

    .line 169
    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v7

    if-nez v7, :cond_9

    .line 171
    invoke-interface {v5}, Lcom/android/camera/data/backup/DataBackUp;->removeOtherVideoMode()V

    .line 178
    :cond_9
    :goto_0
    iget v8, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v8

    invoke-interface {v5, v1, v8, v7}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    .line 180
    iget v5, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    if-eq v5, v11, :cond_11

    if-eq v5, v9, :cond_10

    if-eq v5, v12, :cond_d

    const/16 v8, 0xac

    if-eq v5, v8, :cond_10

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 238
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 239
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v13, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 240
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v14, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 241
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    if-ne v7, v14, :cond_a

    move v13, v14

    :cond_a
    invoke-virtual {p0, v13, v2}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto/16 :goto_6

    .line 246
    :cond_b
    :goto_1
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v14, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 247
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v14, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 248
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v7

    if-eqz v7, :cond_c

    move v13, v14

    .line 250
    :cond_c
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-virtual {p0, v13, v2}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto/16 :goto_6

    .line 189
    :cond_d
    invoke-virtual {v3, v14, v5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 190
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v7, v14, :cond_e

    .line 191
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v13, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 192
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v13, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_2

    .line 194
    :cond_e
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v14, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 195
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v14, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 197
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    if-ne v7, v14, :cond_f

    move v13, v14

    :cond_f
    invoke-virtual {p0, v13, v2}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto/16 :goto_6

    .line 183
    :cond_10
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v14, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 184
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v14, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 185
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v14, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto/16 :goto_6

    .line 202
    :cond_11
    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v7, :cond_12

    .line 203
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v13, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 204
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v13, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_5

    :cond_12
    const-string v4, "pref_camera_groupshot_mode_key"

    const-string v5, "pref_camera_hand_night_key"

    if-nez v7, :cond_17

    .line 207
    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 208
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_3

    .line 211
    :cond_13
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v1

    const/16 v4, 0xc2

    if-ne v1, v4, :cond_14

    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    .line 212
    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isLastOn(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 213
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v13, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 214
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v14, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto :goto_5

    .line 215
    :cond_14
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v1

    const/16 v4, 0xef

    if-ne v1, v4, :cond_15

    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    .line 216
    invoke-virtual {v6, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isLastOn(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 217
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v14, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 218
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v13, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto :goto_5

    .line 220
    :cond_15
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v13, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 221
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v13, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto :goto_5

    .line 209
    :cond_16
    :goto_3
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v14, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 210
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v14, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto :goto_5

    .line 224
    :cond_17
    iget v8, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v3, v14, v8}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 225
    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 226
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_4

    .line 229
    :cond_18
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v13, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto :goto_5

    .line 227
    :cond_19
    :goto_4
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v14, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 232
    :goto_5
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    if-eqz v7, :cond_1a

    move v13, v14

    :cond_1a
    invoke-virtual {p0, v13, v2}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 255
    :goto_6
    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    goto/16 :goto_8

    .line 260
    :cond_1b
    iget v6, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    const/16 v7, 0xa0

    if-ne v6, v7, :cond_1c

    .line 261
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-eqz v6, :cond_1c

    const-string v6, "pref_camera_face_beauty_key"

    .line 262
    invoke-interface {v2, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v6, "pref_video_face_beauty_key"

    .line 263
    invoke-interface {v2, v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 264
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/BeautyParameters;->resetBeautyLevel()V

    .line 267
    :cond_1c
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 270
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 274
    :cond_1d
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    .line 275
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "off"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 277
    iget v6, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 281
    :cond_1e
    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->clearFilterSelected(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 284
    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->resetAll()V

    .line 285
    invoke-interface {v5}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    .line 287
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    if-eq p0, v9, :cond_1f

    if-eq p0, v11, :cond_1f

    if-eq p0, v12, :cond_1f

    goto/16 :goto_8

    .line 291
    :cond_1f
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p0

    if-eqz p0, :cond_20

    move v13, v14

    .line 292
    :cond_20
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-virtual {p0, v13, v2}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto :goto_8

    .line 303
    :cond_21
    iget v3, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v6

    invoke-interface {v5, v1, v3, v6}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    .line 304
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 307
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 309
    :cond_22
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    if-eq v1, v12, :cond_23

    if-ne v1, v10, :cond_25

    .line 316
    :cond_23
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    .line 317
    iget v3, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v1, v14, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 318
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    if-ne v1, v12, :cond_25

    .line 319
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    if-ne v1, v14, :cond_24

    .line 320
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v13, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_7

    .line 322
    :cond_24
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v14, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 326
    :cond_25
    :goto_7
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    if-eq p0, v9, :cond_26

    if-eq p0, v11, :cond_26

    if-ne p0, v12, :cond_28

    .line 329
    :cond_26
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p0

    if-eqz p0, :cond_27

    move v13, v14

    .line 330
    :cond_27
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-virtual {p0, v13, v2}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 339
    :cond_28
    :goto_8
    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    .line 64
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p0, 0xe8

    .line 65
    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0xe5

    .line 69
    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0xe9

    .line 75
    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    .line 83
    iget-object p1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    const/16 p1, 0xe1

    invoke-static {p0, p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 89
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->reconfigureData()V

    .line 95
    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
