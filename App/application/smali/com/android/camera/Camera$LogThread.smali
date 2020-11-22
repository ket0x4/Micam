.class Lcom/android/camera/Camera$LogThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogThread"
.end annotation


# instance fields
.field private mRunFlag:Z

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/android/camera/Camera$LogThread;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 1342
    iput-boolean p1, p0, Lcom/android/camera/Camera$LogThread;->mRunFlag:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1350
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/Camera$LogThread;->mRunFlag:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xa

    .line 1352
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1353
    iget-object v0, p0, Lcom/android/camera/Camera$LogThread;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/camera/Camera$LogThread;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Util;->getDebugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1355
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1358
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public setRunFlag(Z)V
    .locals 0

    .line 1345
    iput-boolean p1, p0, Lcom/android/camera/Camera$LogThread;->mRunFlag:Z

    return-void
.end method
