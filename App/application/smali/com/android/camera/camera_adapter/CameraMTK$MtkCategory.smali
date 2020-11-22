.class Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;
.super Lcom/android/camera/module/CameraModule$CameraCategory;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MtkCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$CameraCategory;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public takePicture(Landroid/location/Location;)V
    .locals 3

    .line 817
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->access$800(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/stereo/WarningCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stereo/WarningCallback;->isDualCameraReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$800(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/stereo/WarningCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stereo/WarningCallback;->isDualCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$902(Lcom/android/camera/camera_adapter/CameraMTK;Z)Z

    .line 820
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$600(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 821
    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 822
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1100(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1000(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoDataCallback(Ljava/lang/Object;)V

    .line 824
    :cond_1
    iget-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1300(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1200(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/module/CameraModule$ShutterCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    .line 827
    invoke-static {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$600(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    move-result-object p0

    const/4 v1, 0x0

    .line 824
    invoke-virtual {p1, v0, v1, v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_1

    .line 829
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule$CameraCategory;->takePicture(Landroid/location/Location;)V

    :goto_1
    return-void
.end method
