.class public Lcom/android/camera/data/data/global/DataItemGlobal;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemGlobal.java"


# instance fields
.field private mIntentType:I

.field private mIsTimeOut:Ljava/lang/Boolean;

.field private mLastCameraId:I

.field private mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

.field private mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mStartFromKeyguard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 84
    new-instance v0, Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/global/ComponentModuleList;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-void
.end method

.method private determineTimeOut()Z
    .locals 4

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_camera_open_time"

    .line 271
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    .line 274
    invoke-static {}, Lcom/android/camera/CameraSettings;->retainCameraMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move p0, v1

    :cond_2
    return p0
.end method

.method private getCurrentCameraId(I)I
    .locals 3

    const/16 v0, 0xa6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xab

    const-string v2, "pref_camera_id_key"

    if-eq p1, v0, :cond_0

    const/16 v0, 0xac

    if-eq p1, v0, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p0, v2, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 120
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0, v2, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private getCurrentMode(I)I
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_camera_mode_key_intent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 p1, 0xa4

    if-ne p1, p0, :cond_0

    const/16 p0, 0xa3

    :cond_0
    return p0
.end method

.method private getDefaultCameraId(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCTACanCollect()Z
    .locals 2

    const-string v0, "can_connect_network"

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    return-object p0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result p0

    return p0
.end method

.method public getCurrentMode()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result p0

    return p0
.end method

.method public getDataBackUpKey(I)I
    .locals 1

    .line 410
    iget v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 411
    iget-boolean p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x10000

    or-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method public getDefaultMode(I)I
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0xa3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    const/16 p0, 0xab

    return p0

    :cond_1
    const/16 p0, 0xa2

    return p0

    :cond_2
    return v0
.end method

.method public getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/global/ComponentGlobalRaw;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mManuallyRaw:Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    return-object p0
.end method

.method public getIntentType()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    return p0
.end method

.method public getLastCameraId()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    return p0
.end method

.method public getPortraitZoom()I
    .locals 2

    .line 419
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_portrait_zoom"

    .line 420
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public initAfterCameraOpen()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit()V

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const/4 v0, 0x0

    .line 206
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_camera_open_time"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "open_camera_fail_key"

    const-wide/16 v1, 0x0

    .line 210
    invoke-interface {p0, v0, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 213
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    .line 214
    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 215
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-interface {p0, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 218
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public isGlobalSwitchOn(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isIntentAction()Z
    .locals 0

    .line 234
    iget p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTimeOut()Z
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZ)Landroid/support/v4/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Boolean;",
            "ZZ)",
            "Landroid/support/v4/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    .line 297
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "android.media.action.VIDEO_CAMERA"

    const-string v6, "android.media.action.STILL_IMAGE_CAMERA"

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v8

    goto :goto_1

    :sswitch_7
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v7

    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    move v2, v9

    goto/16 :goto_5

    .line 316
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 322
    :cond_2
    :pswitch_1
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->getCameraModeId()I

    move-result p2

    const/16 p4, 0xa0

    if-ne p2, p4, :cond_4

    .line 325
    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 326
    invoke-virtual {p0, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result p2

    goto :goto_3

    .line 328
    :cond_3
    invoke-direct {p0, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result p2

    .line 333
    :cond_4
    :goto_3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isUseFrontCamera()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 335
    :catch_0
    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 336
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result p1

    goto :goto_4

    .line 338
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result p1

    .line 343
    :goto_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intent from voice control assist : pendingOpenId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";pendingOpenModule = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "DataItemGlobal"

    invoke-static {v0, p4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput v9, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 349
    iput-boolean p3, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    .line 350
    iget-object p3, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget p4, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {p3, p4}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    .line 351
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p3

    if-eq p2, p3, :cond_6

    .line 352
    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 353
    invoke-static {p2}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    .line 355
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p3

    if-eq p1, p3, :cond_7

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 358
    :cond_7
    new-instance p0, Landroid/support/v4/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_2
    move v2, v3

    goto :goto_5

    :pswitch_3
    move v2, v4

    goto :goto_5

    .line 300
    :pswitch_4
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isPortraitIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    move v2, v8

    :goto_5
    if-eqz v2, :cond_9

    .line 366
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->getCameraFacing()I

    move-result p1

    if-eq p1, v7, :cond_9

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    :cond_9
    if-nez v2, :cond_a

    .line 372
    invoke-direct {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->determineTimeOut()Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v8

    goto :goto_6

    :cond_a
    move p1, v9

    .line 373
    :goto_6
    iget p2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    if-ne p2, v2, :cond_c

    iget-boolean p2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    if-eq p2, p3, :cond_b

    goto :goto_7

    :cond_b
    move v8, v9

    :cond_c
    :goto_7
    if-eqz v8, :cond_d

    .line 375
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/16 p2, 0xa3

    .line 377
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    goto :goto_8

    :cond_d
    if-eqz v8, :cond_e

    .line 378
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/16 p2, 0xa2

    .line 380
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    goto :goto_8

    :cond_e
    if-eqz p1, :cond_f

    .line 383
    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultMode(I)I

    move-result p2

    .line 384
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDefaultCameraId(I)I

    move-result v0

    goto :goto_8

    .line 386
    :cond_f
    invoke-direct {p0, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode(I)I

    move-result p2

    .line 387
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    :goto_8
    if-nez p4, :cond_12

    .line 392
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    if-eqz v8, :cond_10

    .line 394
    iput v2, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    .line 395
    iput-boolean p3, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    .line 396
    iget-object p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget p3, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/global/ComponentModuleList;->setIntentType(I)V

    .line 398
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    if-eq p2, p1, :cond_11

    .line 399
    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 400
    invoke-static {p2}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    .line 402
    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    if-eq v0, p1, :cond_12

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 406
    :cond_12
    new-instance p0, Landroid/support/v4/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_7
        -0x62d863dd -> :sswitch_6
        -0x5b1e1211 -> :sswitch_5
        -0x566ad1d3 -> :sswitch_4
        0x1ba9c1af -> :sswitch_3
        0x29c9b033 -> :sswitch_2
        0x43680478 -> :sswitch_1
        0x4c4c1b77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera_settings_global"

    return-object p0
.end method

.method public resetTimeOut()V
    .locals 3

    const/4 v0, 0x0

    .line 264
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIsTimeOut:Ljava/lang/Boolean;

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "pref_camera_open_time"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCTACanCollect(Z)V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "can_connect_network"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCameraId(I)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 156
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_id_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setCameraIdTransient(I)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mLastCameraId:I

    .line 166
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_id_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_camera_mode_key_intent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mIntentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setPortraitZoom(I)V
    .locals 1

    .line 427
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "pref_camera_portrait_zoom"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method public setStartFromKeyguard(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/android/camera/data/data/global/DataItemGlobal;->mStartFromKeyguard:Z

    return-void
.end method
