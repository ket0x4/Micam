.class Lcom/android/camera/module/CameraModule$1;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
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

    .line 300
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$1;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 303
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$1;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick(I)V

    return-void
.end method
