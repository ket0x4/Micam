.class Lcom/android/camera/module/CameraModule$11;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 5705
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 0

    .line 5722
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget p0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDevicePostureChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 1

    .line 5740
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEdgePhotoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5741
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->onDeviceMoving()V

    :cond_0
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 2

    .line 5727
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v1, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_0

    .line 5731
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$4200(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    .line 5732
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 5733
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isManualSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5734
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManager;->onDeviceKeepMoving(D)V

    :cond_0
    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 4

    .line 5751
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iput p1, v0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    .line 5752
    iget-boolean v1, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 5756
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    .line 5757
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 5758
    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, v2, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    .line 5759
    invoke-static {v3, v2}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result v2

    .line 5757
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    .line 5761
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5762
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    .line 5764
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {p1, v0}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result p1

    .line 5765
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    add-int/2addr v0, p1

    .line 5766
    rem-int/lit16 v0, v0, 0x168

    .line 5768
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5770
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_3

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5771
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5772
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$11;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    return-void
.end method
