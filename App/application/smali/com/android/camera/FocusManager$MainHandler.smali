.class Lcom/android/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    .line 115
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 120
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_1

    .line 137
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->reShowFaceRect()V

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {p1}, Lcom/android/camera/FocusManager;->access$000(Lcom/android/camera/FocusManager;)V

    .line 140
    iget-object p0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {p0}, Lcom/android/camera/FocusManager;->access$100(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/FocusManager$Listener;->startFaceDetection()V

    :goto_0
    return-void
.end method
