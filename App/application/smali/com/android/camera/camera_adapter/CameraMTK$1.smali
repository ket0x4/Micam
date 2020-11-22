.class Lcom/android/camera/camera_adapter/CameraMTK$1;
.super Ljava/lang/Object;
.source "CameraMTK.java"

# interfaces
.implements Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$1;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinuousShotDone(I)V
    .locals 3

    .line 89
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotDone: capNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$1;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$100(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$1;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->handleMultiSnapDone()V

    return-void
.end method
