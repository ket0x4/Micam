.class Lcom/android/camera/module/CameraModule$5;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->prepareSuperNight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 2334
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2337
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2341
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdac

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2353
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/module/CameraModule;->access$6002(Lcom/android/camera/module/CameraModule;Z)Z

    .line 2354
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p1}, Lcom/android/camera/module/CameraModule;->access$7500(Lcom/android/camera/module/CameraModule;)V

    .line 2355
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$5;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 2357
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc6

    .line 2358
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p0, :cond_3

    .line 2360
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart()V

    goto :goto_0

    .line 2343
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    .line 2344
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_3

    const/16 p1, 0x9

    const v0, 0x7f0f0461

    const/4 v1, 0x4

    .line 2347
    invoke-interface {p0, p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2334
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$5;->accept(Ljava/lang/Integer;)V

    return-void
.end method
