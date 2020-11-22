.class Lcom/android/camera/module/CameraModule$27;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->stopScreenLightDirectly()V
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

    .line 7875
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$27;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 7878
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$27;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    .line 7879
    invoke-virtual {p0}, Lcom/android/camera/Camera;->restoreWindowBrightness()V

    :cond_0
    return-void
.end method
