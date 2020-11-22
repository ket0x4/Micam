.class Lcom/android/camera/module/VideoModule$3;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1564
    invoke-static {}, Lcom/android/camera/module/VideoModule;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mRestoreRunnable start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->restoreMusicSound()V

    .line 1567
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1568
    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->keepScreenOnAwhile()V

    .line 1573
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_3

    .line 1574
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1575
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoBase;->doReturnToCaller(Z)V

    goto :goto_0

    .line 1576
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1577
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->showAlert()V

    goto :goto_0

    .line 1580
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1585
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_4

    .line 1586
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1588
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->animateSlide()V

    .line 1590
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->updateLoadUI(Z)V

    .line 1592
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onStopRecording()V

    .line 1594
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1595
    invoke-static {}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStopVideoRecordEnd()V

    return-void
.end method
