.class Lcom/android/camera/ProximitySensorLock$1;
.super Landroid/os/Handler;
.source "ProximitySensorLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ProximitySensorLock;


# direct methods
.method constructor <init>(Lcom/android/camera/ProximitySensorLock;Landroid/os/Looper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 106
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object p1, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {p1}, Lcom/android/camera/ProximitySensorLock;->access$200(Lcom/android/camera/ProximitySensorLock;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "ProximitySensorLock"

    const-string v0, "delay check timeout, callback not returned, take it as far"

    .line 116
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {p1}, Lcom/android/camera/ProximitySensorLock;->access$300(Lcom/android/camera/ProximitySensorLock;)V

    .line 118
    iget-object p1, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/ProximitySensorLock;->access$202(Lcom/android/camera/ProximitySensorLock;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 120
    iget-object p1, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {p1}, Lcom/android/camera/ProximitySensorLock;->access$400(Lcom/android/camera/ProximitySensorLock;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {p1}, Lcom/android/camera/ProximitySensorLock;->access$500(Lcom/android/camera/ProximitySensorLock;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    iget-object p0, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {p0}, Lcom/android/camera/ProximitySensorLock;->access$600(Lcom/android/camera/ProximitySensorLock;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    const-string v0, "\u9501\u5c4f\u8d85\u65f6\u9000\u51fa"

    invoke-static {p1, v0}, Lcom/android/camera/ProximitySensorLock;->access$000(Lcom/android/camera/ProximitySensorLock;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {p0}, Lcom/android/camera/ProximitySensorLock;->access$100(Lcom/android/camera/ProximitySensorLock;)V

    :cond_2
    :goto_0
    return-void
.end method
