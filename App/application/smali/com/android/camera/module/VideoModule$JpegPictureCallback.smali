.class final Lcom/android/camera/module/VideoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;Landroid/location/Location;)V
    .locals 0

    .line 2187
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2188
    iput-object p2, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    .line 2193
    invoke-static {}, Lcom/android/camera/module/VideoModule;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onPictureTaken"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object p2, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/camera/module/VideoBase;->mSnapshotInProgress:Z

    .line 2196
    iget-boolean v0, p2, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2201
    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2, v1}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2202
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2204
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {p0, p1, v0}, Lcom/android/camera/module/VideoModule;->access$1200(Lcom/android/camera/module/VideoModule;[BLandroid/location/Location;)V

    return-void
.end method
