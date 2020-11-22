.class Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
.super Lcom/android/camera/module/CameraModule$JpegPictureCallback;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StereoPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/location/Location;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    .line 836
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 0

    .line 855
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .line 841
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mJpegPictureCallback] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/CameraMTK;->access$900(Lcom/android/camera/camera_adapter/CameraMTK;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$900(Lcom/android/camera/camera_adapter/CameraMTK;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    iget-object p2, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p2}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1400(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/FocusManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 849
    iget-object p2, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p2, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1502(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B

    .line 850
    iget-object p0, p0, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-static {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->access$1600(Lcom/android/camera/camera_adapter/CameraMTK;)V

    .line 851
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraMTK;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[mJpegPictureCallback] end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 843
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    return-void
.end method
