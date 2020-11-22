.class Lcom/android/camera/module/CameraModule$24;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->resetAiSceneInHdrOrFlashOn()V
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

    .line 7782
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$24;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7785
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$24;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/module/CameraModule;->access$8700(Lcom/android/camera/module/CameraModule;IZ)V

    .line 7786
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$24;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0, v1}, Lcom/android/camera/module/CameraModule;->access$9402(Lcom/android/camera/module/CameraModule;Z)Z

    return-void
.end method
