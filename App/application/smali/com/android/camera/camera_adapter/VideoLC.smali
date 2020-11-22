.class public Lcom/android/camera/camera_adapter/VideoLC;
.super Lcom/android/camera/module/VideoModule;
.source "VideoLC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateVideoParametersPreference()V
    .locals 3

    .line 12
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    aget v2, v0, v1

    aget v0, v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_0
    return-void
.end method
