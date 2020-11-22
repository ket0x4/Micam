.class Lcom/android/camera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    .line 87
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 92
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    monitor-enter p1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    invoke-static {v0}, Lcom/android/camera/CameraHolder;->access$000(Lcom/android/camera/CameraHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object p0, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraHolder;->release(Z)V

    .line 103
    :cond_1
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
