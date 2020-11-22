.class public Lcom/android/camera/module/CameraModule$MetaDataManager;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MetaDataManager"
.end annotation


# instance fields
.field private mCurrentScene:I

.field private mLastScene:I

.field private mLatestState:I

.field private mLatestTimes:I

.field private mMetaType:I

.field private mSceneShieldMask:I

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 1

    .line 6420
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 6413
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 6414
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 6415
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    const/4 p1, 0x0

    .line 6416
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    const/16 v0, 0xff

    .line 6417
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 6418
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    return-void
.end method

.method static synthetic access$7700(Lcom/android/camera/module/CameraModule$MetaDataManager;)I
    .locals 0

    .line 6383
    iget p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    return p0
.end method

.method static synthetic access$7800(Lcom/android/camera/module/CameraModule$MetaDataManager;)I
    .locals 0

    .line 6383
    iget p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    return p0
.end method

.method static synthetic access$7900(Lcom/android/camera/module/CameraModule$MetaDataManager;)V
    .locals 0

    .line 6383
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    return-void
.end method

.method private applyScene(I)V
    .locals 6

    .line 6746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyScene "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMetaDataManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6748
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    .line 6749
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 6808
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$8300(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6809
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, v5}, Lcom/android/camera/module/CameraModule;->access$8400(Lcom/android/camera/module/CameraModule;I)V

    goto/16 :goto_0

    .line 6801
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$8300(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6802
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    const p1, 0x7f0f01d0

    invoke-virtual {p0, v4, p1, v3}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    goto/16 :goto_0

    .line 6794
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$8300(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6795
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    const p1, 0x7f0f01d2

    invoke-virtual {p0, v4, p1, v3}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    goto/16 :goto_0

    .line 6787
    :pswitch_3
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$8300(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6788
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    const p1, 0x7f0f01d1

    invoke-virtual {p0, v4, p1, v3}, Lcom/android/camera/module/BaseModule;->updateTipMessage(III)V

    goto/16 :goto_0

    .line 6784
    :pswitch_4
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto/16 :goto_0

    .line 6764
    :pswitch_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportFrontFlashEnhance()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6766
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "applyScene SCENE_NIGHT front enableHandNight"

    .line 6767
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6768
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6769
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/android/camera/module/CameraModule;->enableHandNight(Landroid/hardware/Camera$Parameters;)V

    .line 6770
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_0
    :pswitch_6
    const-string p1, "applyScene SCENE_NIGHT"

    .line 6775
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6777
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHHT()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget p1, p1, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v0, 0xab

    if-ne p1, v0, :cond_1

    .line 6778
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraDataContainer;->getFrontMuxCameraId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 6779
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 6780
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateSuperResolution()V

    goto :goto_0

    :pswitch_7
    const-string p1, "applyScene SCENE_HDR"

    .line 6757
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6758
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6759
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 6760
    invoke-interface {v0, v5, v5, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    goto :goto_0

    .line 6752
    :pswitch_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6753
    invoke-interface {v0, v5, v5, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(IZZ)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private detectASDScene(I)I
    .locals 5

    .line 6598
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 6602
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr p1, v0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 6604
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "sceneResult:%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraMetaDataManager"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6606
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    invoke-static {v2}, Lcom/android/camera/Device;->isSupportedAsdFlash(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6607
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    return v4

    .line 6610
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->inMandatoryMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 6611
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    invoke-static {v2}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6612
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6613
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "torch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_2

    return v0

    .line 6617
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->isCurrentCameraNeedAsdNight(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    return p0

    .line 6620
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTeleAsdNight()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 6621
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_5

    const/16 p0, 0x8

    return p0

    .line 6624
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdMotion(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 6625
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6626
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_7

    const/4 p0, 0x3

    return p0

    :cond_7
    return v1
.end method

.method private detectRTBScene(I)I
    .locals 4

    .line 6637
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6638
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 6639
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$8200(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-ne p1, v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    return v1

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x5

    :goto_2
    return v1

    :cond_7
    const/4 v2, 0x6

    if-ne p1, v3, :cond_9

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1

    :cond_9
    if-ne p1, v2, :cond_a

    .line 6647
    iget p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    return p0

    :cond_a
    const/4 p0, 0x7

    return p0
.end method

.method private filterScene(I)V
    .locals 0

    .line 6564
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setScene(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6565
    iget p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->restoreScene(I)V

    const/4 p1, -0x1

    .line 6566
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 6567
    iget p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->applyScene(I)V

    :cond_0
    return-void
.end method

.method private isBackCameraNeedAsdNight()Z
    .locals 3

    const/4 v0, 0x0

    .line 6581
    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdNight(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 6582
    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 6583
    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6584
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6585
    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdFlash(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6586
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isCurrentCameraNeedAsdNight(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 6572
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->isFrontCameraNeedAsdNight()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->isBackCameraNeedAsdNight()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private isFrontCameraNeedAsdNight()Z
    .locals 2

    const/4 v0, 0x1

    .line 6593
    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdNight(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 6594
    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private printMetaData([B)V
    .locals 9

    .line 6502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 6503
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 6504
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%02x,"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "  data[8]="

    .line 6506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6507
    array-length v2, p1

    const-string v3, "%02x"

    const/16 v5, 0x8

    if-le v2, v5, :cond_1

    .line 6508
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    aget-byte v7, p1, v5

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "not exist"

    .line 6507
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " length:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSceneShieldMask="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  result="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte p1, p1, v5

    iget p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {v6, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6513
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCameraMetaData buffer="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMetaDataManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetSceneMode()V
    .locals 1

    .line 6489
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6490
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->restoreScene(I)V

    .line 6493
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneData()V

    return-void
.end method

.method private restoreScene(I)V
    .locals 6

    .line 6674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreScene "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMetaDataManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xac

    const-string v2, "on"

    const-string v3, "torch"

    const/16 v4, 0x8

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 6736
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$8300(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 6737
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, v4}, Lcom/android/camera/module/CameraModule;->access$8400(Lcom/android/camera/module/CameraModule;I)V

    goto/16 :goto_0

    .line 6731
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$8300(Lcom/android/camera/module/CameraModule;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 6732
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->hideTipMessage(I)V

    goto/16 :goto_0

    .line 6724
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6725
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_0

    .line 6707
    :pswitch_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportFrontFlashEnhance()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6709
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "restore SCENE_NIGHT front disableHandNight"

    .line 6710
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6711
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6712
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/android/camera/module/CameraModule;->disableHandNight(Landroid/hardware/Camera$Parameters;)V

    .line 6713
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    :cond_0
    :pswitch_4
    const-string p1, "restore SCENE_NIGHT"

    .line 6718
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6719
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6720
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "restore SCENE_HDR"

    .line 6692
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6693
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6694
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {p1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 6696
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 6698
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "normal"

    .line 6699
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 6701
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    .line 6702
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6703
    invoke-interface {p0, v4, v5, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    goto :goto_0

    .line 6678
    :pswitch_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6679
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    .line 6681
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 6682
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "screen_light_on"

    .line 6683
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 6685
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    .line 6686
    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6687
    invoke-interface {p0, v4, v5, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(IZZ)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setScene(I)Z
    .locals 3

    .line 6655
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 6656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScene "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMetaDataManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6659
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    .line 6660
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    .line 6661
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    goto :goto_0

    .line 6662
    :cond_1
    iget p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    const/4 v2, 0x3

    if-ge p1, v2, :cond_2

    add-int/2addr p1, v1

    .line 6663
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    .line 6664
    iget p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    if-ne v2, p1, :cond_2

    iget p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    if-eq p1, v0, :cond_2

    .line 6665
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 6666
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public reset()V
    .locals 0

    .line 6497
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetFilter()V

    .line 6498
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    return-void
.end method

.method public resetFilter()V
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 6481
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    const-string v0, "pref_camera_hdr_key"

    .line 6482
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    const-string v0, "pref_camera_asd_night_key"

    .line 6483
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    const-string v0, "pref_camera_asd_motion_key"

    .line 6484
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    return-void
.end method

.method public resetSceneData()V
    .locals 1

    const/4 v0, -0x1

    .line 6556
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 6557
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 6558
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    const/4 v0, 0x0

    .line 6559
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    return-void
.end method

.method public setAsdDetectMask(Ljava/lang/String;)V
    .locals 8

    .line 6436
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdFlash(Z)Z

    move-result v0

    const-string v1, "auto"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6440
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 6439
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    move v0, v3

    goto/16 :goto_0

    .line 6441
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    .line 6445
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 6444
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_0

    .line 6446
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTeleAsdNight()Z

    move-result v0

    const-string v1, "pref_camera_asd_night_key"

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xc0

    const/16 v0, 0x8

    .line 6450
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightEnable()Z

    move-result v1

    goto :goto_0

    .line 6451
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdNight(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6452
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0x40

    const/4 v0, 0x2

    .line 6455
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightEnable()Z

    move-result v1

    goto :goto_0

    .line 6456
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdMotion(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "pref_camera_asd_motion_key"

    .line 6457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x20

    const/4 v0, 0x3

    .line 6460
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdMotionEnable()Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    move v0, v2

    move v1, v3

    move v2, v1

    .line 6462
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v5, 0xac

    const-string v6, "CameraMetaDataManager"

    if-ne v4, v5, :cond_5

    const-string v1, "setAsdDetectMask, turn off ALL ASD for super night mode."

    .line 6463
    invoke-static {v6, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 6466
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAsdDetectMask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 6469
    iget p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    goto :goto_1

    .line 6471
    :cond_6
    iget p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    not-int v1, v2

    and-int/2addr p1, v1

    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 6473
    iget p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    if-ne v0, p1, :cond_7

    .line 6474
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    :cond_7
    :goto_1
    return-void
.end method

.method public setData([B)V
    .locals 4

    .line 6517
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 6518
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->printMetaData([B)V

    .line 6520
    :cond_0
    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6524
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 6526
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    if-ne v0, v1, :cond_7

    .line 6527
    aget-byte p1, p1, v2

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->detectRTBScene(I)I

    move-result p1

    .line 6528
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->filterScene(I)V

    goto :goto_0

    .line 6532
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->useOldMetaDataTypeForASD()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 6537
    :cond_4
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    if-ne v0, v3, :cond_5

    .line 6538
    aget-byte v0, p1, v2

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->detectASDScene(I)I

    move-result v0

    .line 6539
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->filterScene(I)V

    .line 6542
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$8000(Lcom/android/camera/module/CameraModule;)Lio/reactivex/FlowableEmitter;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->isSupportScreenLight()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/android/camera/module/CameraModule;->mScreenLightOn:Z

    if-eqz v1, :cond_6

    .line 6543
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$8000(Lcom/android/camera/module/CameraModule;)Lio/reactivex/FlowableEmitter;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 6546
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$8100(Lcom/android/camera/module/CameraModule;)Lio/reactivex/FlowableEmitter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isAiSceneEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_7

    .line 6547
    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$8100(Lcom/android/camera/module/CameraModule;)Lio/reactivex/FlowableEmitter;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 6425
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    if-eq v0, p1, :cond_0

    .line 6426
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->reset()V

    .line 6428
    :cond_0
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    .line 6429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMetaType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraMetaDataManager"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
