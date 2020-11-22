.class Lcom/android/camera/snap/SnapTrigger$2;
.super Ljava/lang/Object;
.source "SnapTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapTrigger;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapTrigger;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 188
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-static {}, Lcom/android/camera/snap/SnapTrigger;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "previous camera is not release, stop service"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$400(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {p0}, Lcom/android/camera/snap/SnapTrigger;->access$400(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$1100(Lcom/android/camera/snap/SnapTrigger;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$400(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v0}, Lcom/android/camera/snap/SnapTrigger;->access$400(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {v1}, Lcom/android/camera/snap/SnapTrigger;->access$1200(Lcom/android/camera/snap/SnapTrigger;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger$2;->this$0:Lcom/android/camera/snap/SnapTrigger;

    invoke-static {p0}, Lcom/android/camera/snap/SnapTrigger;->access$000(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x64

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xc8

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
