.class public Lcom/android/camera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# instance fields
.field private mHardwareErrorListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/CameraManager$HardwareErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraManager;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    invoke-static {p1}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/camera/Util;->Assert(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V
    .locals 0

    .line 481
    invoke-direct {p0, p1}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 609
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 610
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public addRawImageCallbackBuffer([B)V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 732
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 733
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 615
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 616
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 621
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 622
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public cancelPicture()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 650
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 651
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method

.method public getCameraState()I
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$400(Lcom/android/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 725
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 726
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 727
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    return-object p0
.end method

.method public getWBCT()I
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 718
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 719
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 720
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$1000(Lcom/android/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public isFocusSuccessful()Z
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 711
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 712
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 713
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$900(Lcom/android/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public isNeedFlashOn()Z
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 704
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 705
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 706
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$800(Lcom/android/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public isPreviewEnable()Z
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 762
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 763
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 764
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$1100(Lcom/android/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public lock()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 542
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 543
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public notifyHardwareError()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "mark camera error from manager notify"

    .line 489
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraManager;->access$1202(Lcom/android/camera/CameraManager;Z)Z

    const-string v0, "runtime"

    .line 492
    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->trackCameraError(Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mHardwareErrorListener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 494
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/CameraManager$HardwareErrorListener;

    if-eqz p0, :cond_0

    .line 496
    invoke-interface {p0, v1}, Lcom/android/camera/CameraManager$HardwareErrorListener;->notifyError(I)V

    :cond_0
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 527
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 528
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 529
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$500(Lcom/android/camera/CameraManager;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public release()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const-string v0, "CameraManager"

    const-string v1, "release"

    .line 519
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 521
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    return-void
.end method

.method public removeAllAsyncMessage()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 627
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 628
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setBurstShotSpeed(I)V
    .locals 3

    .line 768
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 769
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 770
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setCameraError()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "mark camera error from callback"

    .line 513
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraManager;->holdException(Z)V

    return-void
.end method

.method public setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 775
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 776
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 656
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 657
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 658
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 687
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 688
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 669
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 670
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mHardwareErrorListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->mHardwareErrorListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setLongshotMode(Z)V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 603
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 604
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setMetaDataCallback(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 756
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 757
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneShotPreviewCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 598
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 693
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 694
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setParametersAsync(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 590
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 591
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 584
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 585
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 551
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 552
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 548
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "surfaceTexture is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStereoDataCallback(Ljava/lang/Object;)V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 781
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 782
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setStereoWarningCallback(Ljava/lang/Object;)V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 787
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 788
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 663
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 664
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 675
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 676
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public startObjectTrack(Landroid/graphics/RectF;)V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 744
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 745
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 567
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public startPreviewAsync()V
    .locals 1

    .line 562
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 681
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public stopObjectTrack()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 750
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 751
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 578
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 579
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 8

    .line 633
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 635
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/camera/CameraManager$CameraProxy$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/CameraManager$CameraProxy$1;-><init>(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public unlock()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 536
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$1300(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    iget-object p0, p0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {p0}, Lcom/android/camera/CameraManager;->access$300(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method
