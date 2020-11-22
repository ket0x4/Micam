.class public Lcom/android/camera/camera_adapter/VideoNv;
.super Lcom/android/camera/module/VideoModule;
.source "VideoNv.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/VideoNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateVideoParametersPreference()V
    .locals 2

    .line 12
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 14
    sget-object v0, Lcom/android/camera/camera_adapter/VideoNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method
