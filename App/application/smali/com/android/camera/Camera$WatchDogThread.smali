.class Lcom/android/camera/Camera$WatchDogThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchDogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ANR-WatchDog"

    .line 1306
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1309
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "watch dog run "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchDogThread"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v0, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)I

    move-result v0

    .line 1312
    iget-object v2, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v2, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0x1388

    .line 1314
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    iget-object v1, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    .line 1323
    iget-object v0, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;I)V

    .line 1324
    iget-object p0, p0, Lcom/android/camera/Camera$WatchDogThread;->this$0:Lcom/android/camera/Camera;

    invoke-static {p0, v1}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;Z)V

    return-void

    .line 1316
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "watch dog InterruptedException "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
