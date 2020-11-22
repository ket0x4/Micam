.class Lcom/android/camera/Camera$10;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1605
    iput-object p1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1609
    iget-object v0, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isDeparted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    iget-object p0, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/module/Module;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
