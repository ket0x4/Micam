.class Lcom/android/camera/module/UDCFPortraitModule$1;
.super Ljava/lang/Object;
.source "UDCFPortraitModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/UDCFPortraitModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/UDCFPortraitModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/UDCFPortraitModule;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v0}, Lcom/android/camera/module/UDCFPortraitModule;->access$008(Lcom/android/camera/module/UDCFPortraitModule;)I

    .line 43
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-boolean v1, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {v0}, Lcom/android/camera/module/UDCFPortraitModule;->access$200(Lcom/android/camera/module/UDCFPortraitModule;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "ms focused="

    if-eqz p2, :cond_1

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {p2}, Lcom/android/camera/module/UDCFPortraitModule;->access$300(Lcom/android/camera/module/UDCFPortraitModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 50
    invoke-static {}, Lcom/android/camera/module/UDCFPortraitModule;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vice Camera mAutoFocusTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p2, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {p2, p1}, Lcom/android/camera/module/UDCFPortraitModule;->access$402(Lcom/android/camera/module/UDCFPortraitModule;Z)Z

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-wide v3, p2, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    sub-long/2addr v1, v3

    .line 54
    invoke-static {}, Lcom/android/camera/module/UDCFPortraitModule;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary Camera mAutoFocusTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p2, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {p2, p1}, Lcom/android/camera/module/UDCFPortraitModule;->access$502(Lcom/android/camera/module/UDCFPortraitModule;Z)Z

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {p1}, Lcom/android/camera/module/UDCFPortraitModule;->access$000(Lcom/android/camera/module/UDCFPortraitModule;)I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    return-void

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-object p1, p1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget p1, p1, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 63
    iget-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-virtual {p1, p2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 65
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-object v0, p1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-static {p1}, Lcom/android/camera/module/UDCFPortraitModule;->access$500(Lcom/android/camera/module/UDCFPortraitModule;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-static {p1}, Lcom/android/camera/module/UDCFPortraitModule;->access$400(Lcom/android/camera/module/UDCFPortraitModule;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lcom/android/camera/FocusManager;->onAutoFocus(Z)V

    .line 67
    iget-object p0, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    return-void

    .line 44
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/camera/module/UDCFPortraitModule;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoFocus: paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/UDCFPortraitModule$1;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    iget-boolean p0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " focused="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
