.class Lcom/android/camera/ui/CameraSnapView$1;
.super Landroid/os/Handler;
.source "CameraSnapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraSnapView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraSnapView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 76
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPressCancelIn()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPressCancelOut()V

    goto :goto_0

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPress()V

    goto :goto_0

    .line 79
    :cond_3
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView$1;->this$0:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p0}, Lcom/android/camera/ui/CameraSnapView;->access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapClick()V

    :goto_0
    return-void
.end method
