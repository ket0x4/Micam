.class Lcom/android/camera/module/MorphoPanoramaModule$2;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/MorphoPanoramaModule;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;

.field final synthetic val$data2:[B


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;[B)V
    .locals 0

    .line 1357
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->val$data2:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1359
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1360
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onPreviewFrame mCameraDevice has been released"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1363
    :cond_0
    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1700(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1364
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v1}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1508(Lcom/android/camera/module/MorphoPanoramaModule;)I

    .line 1365
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewFrame CaptureInfo run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1800(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1000()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1368
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1800(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1369
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 1371
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-static {v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1900(Lcom/android/camera/module/MorphoPanoramaModule;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 1373
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/module/MorphoPanoramaModule;->access$2002(Lcom/android/camera/module/MorphoPanoramaModule;Z)Z

    .line 1374
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPreviewFrame takePicture"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1, v1, v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_1

    .line 1377
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$2;->val$data2:[B

    invoke-virtual {v0, p0}, Lcom/android/camera/module/MorphoPanoramaModule;->onPictureTakenPreview([B)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 1365
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
