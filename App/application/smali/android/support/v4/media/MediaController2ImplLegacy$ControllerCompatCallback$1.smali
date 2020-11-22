.class Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1;
.super Landroid/os/ResultReceiver;
.source "MediaController2ImplLegacy.java"


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 949
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$300(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    return-void

    .line 954
    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-virtual {p0, p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->onConnectedNotLocked(Landroid/os/Bundle;)V

    throw v1

    .line 957
    :cond_2
    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object p1, p1, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p1}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1$1;

    invoke-direct {p2, p0}, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1$1;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 963
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->close()V

    throw v1
.end method
