.class Lcom/android/camera/module/VideoBase$2;
.super Ljava/lang/Object;
.source "VideoBase.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoBase;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 1385
    iput-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 0

    .line 1392
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean p0, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return p0
.end method

.method public notifyDevicePostureChanged()V
    .locals 2

    .line 1436
    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean v1, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1439
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V9EdgeShutterView;->onDevicePostureChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 6

    .line 1397
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-boolean p1, p1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez p1, :cond_1

    .line 1399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-wide v2, p1, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    const-wide/16 v4, 0x7d0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    .line 1400
    invoke-static {p1}, Lcom/android/camera/module/VideoBase;->access$200(Lcom/android/camera/module/VideoBase;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1401
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/camera/module/VideoBase;->mIsTouchFocused:Z

    .line 1402
    iget-object p1, p1, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz p1, :cond_1

    .line 1403
    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->onDeviceKeepMoving()V

    .line 1404
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p1, Lcom/android/camera/module/VideoBase;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1405
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p1}, Lcom/android/camera/module/VideoBase;->cancelAutoFocus()V

    .line 1406
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p1}, Lcom/android/camera/module/VideoBase;->isVideoRecording()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1407
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    const-string p2, "continuous-video"

    invoke-virtual {p1, p2}, Lcom/android/camera/module/VideoBase;->setVideoFocusMode(Ljava/lang/String;)V

    .line 1409
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$2;->this$0:Lcom/android/camera/module/VideoBase;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_1

    .line 1410
    new-instance p2, Lcom/android/camera/module/VideoBase$2$1;

    invoke-direct {p2, p0}, Lcom/android/camera/module/VideoBase$2$1;-><init>(Lcom/android/camera/module/VideoBase$2;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 0

    return-void
.end method
