.class Lcom/android/camera/SensorStateManager$MainHandler;
.super Landroid/os/Handler;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/SensorStateManager;Landroid/os/Looper;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    .line 617
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 621
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 626
    :cond_0
    iget-object p0, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->access$1900(Lcom/android/camera/SensorStateManager;IZ)V

    goto :goto_1

    .line 623
    :cond_2
    iget-object p0, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {p0}, Lcom/android/camera/SensorStateManager;->access$1800(Lcom/android/camera/SensorStateManager;)V

    :goto_1
    return-void
.end method
