.class final Lcom/android/camera/module/CameraModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 2116
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0

    .line 2116
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$AutoFocusCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4

    .line 2120
    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, p2, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2125
    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v2, v2, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/android/camera/module/CameraModule;->mAutoFocusTime:J

    .line 2126
    sget-object p2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoFocusTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v1, v1, Lcom/android/camera/module/CameraModule;->mAutoFocusTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p2, p2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p2}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget p2, p2, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 2129
    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2131
    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p2, p2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p2, p1}, Lcom/android/camera/FocusManager;->onAutoFocus(Z)V

    .line 2133
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    return-void

    .line 2121
    :cond_2
    :goto_0
    sget-object p2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoFocus: paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

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
