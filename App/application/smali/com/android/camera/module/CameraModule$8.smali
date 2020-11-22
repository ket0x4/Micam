.class Lcom/android/camera/module/CameraModule$8;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 3710
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$8;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3722
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$8;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3724
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb8

    .line 3725
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;

    .line 3726
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;->setSnapNumVisible(Z)V

    .line 3728
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$8;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/module/CameraModule;->access$4302(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 3729
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$8;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, v1}, Lcom/android/camera/module/CameraModule;->access$6602(Lcom/android/camera/module/CameraModule;Z)Z

    return-void
.end method
