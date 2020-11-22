.class Lcom/android/camera/module/FunModule$2;
.super Ljava/lang/Object;
.source "FunModule.java"

# interfaces
.implements Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FunModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 0

    .line 1359
    iput-object p1, p0, Lcom/android/camera/module/FunModule$2;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/android/camera/module/encoder/MediaEncoder;)V
    .locals 3

    .line 1362
    invoke-static {}, Lcom/android/camera/module/FunModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared: encoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    .line 1364
    iget-object p0, p0, Lcom/android/camera/module/FunModule$2;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {p0}, Lcom/android/camera/module/FunModule;->access$100(Lcom/android/camera/module/FunModule;)Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    check-cast p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V

    :cond_0
    return-void
.end method

.method public onStopped(Lcom/android/camera/module/encoder/MediaEncoder;)V
    .locals 3

    .line 1370
    invoke-static {}, Lcom/android/camera/module/FunModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopped: encoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    instance-of p1, p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz p1, :cond_0

    .line 1372
    iget-object p1, p0, Lcom/android/camera/module/FunModule$2;->this$0:Lcom/android/camera/module/FunModule;

    invoke-static {p1}, Lcom/android/camera/module/FunModule;->access$100(Lcom/android/camera/module/FunModule;)Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V

    .line 1373
    iget-object p0, p0, Lcom/android/camera/module/FunModule$2;->this$0:Lcom/android/camera/module/FunModule;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/module/FunModule;->access$200(Lcom/android/camera/module/FunModule;Z)V

    .line 1374
    invoke-static {}, Lcom/android/camera/module/FunModule;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mRestoreRunnable start"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
