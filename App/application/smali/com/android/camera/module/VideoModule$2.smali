.class Lcom/android/camera/module/VideoModule$2;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->startVideoRecordingIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->markPerformed()V

    .line 803
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick(I)V

    return-void
.end method
