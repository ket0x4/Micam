.class public Lcom/android/camera/module/CameraModule$CameraCategory;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method protected constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 6850
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public takePicture(Landroid/location/Location;)V
    .locals 6

    .line 6852
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "CameraCategory#takePicture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6853
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, v0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    iget-object v3, v0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    iget-object v4, v0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    .line 6855
    iget v0, v0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    const/4 v5, 0x2

    if-le v0, v5, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6857
    :cond_0
    new-instance v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    goto :goto_1

    .line 6856
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    .line 6853
    :goto_1
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method
