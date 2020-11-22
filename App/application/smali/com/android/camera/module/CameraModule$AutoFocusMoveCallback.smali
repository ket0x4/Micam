.class final Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 2137
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0

    .line 2137
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 3

    .line 2141
    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, p2, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_8

    iget-object v0, p2, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_8

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 2145
    :cond_0
    sget-object p2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoFocusMoving moving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    if-eqz p1, :cond_1

    move p2, v0

    goto :goto_0

    .line 2148
    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p2}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result p2

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2153
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1, v0}, Lcom/android/camera/module/CameraModule;->access$7202(Lcom/android/camera/module/CameraModule;I)I

    const-string v1, "onAutoFocusMoving start"

    goto :goto_1

    .line 2154
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$7200(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoFocusMoving end. result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    .line 2157
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$7208(Lcom/android/camera/module/CameraModule;)I

    .line 2159
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 2160
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    .line 2165
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 2166
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2167
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/FocusManager;->onAutoFocusMoving(ZZ)V

    :cond_6
    if-eqz v0, :cond_7

    .line 2170
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->requestDecode()V

    :cond_7
    return-void

    .line 2142
    :cond_8
    :goto_2
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAutoFocusMoving: paused=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] mCameraDevice=["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
