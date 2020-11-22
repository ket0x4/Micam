.class public Lcom/android/camera/module/loader/FunctionCameraLegacySetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraLegacySetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/BaseModule;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CameraSetup"

    .line 46
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    .line 52
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v2

    const/16 v3, 0xe1

    if-eqz v2, :cond_1

    .line 53
    invoke-static {v1, v3}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    .line 62
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    .line 64
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v6, v5, v7}, Lcom/android/camera/CameraDataContainer;->getActualOpenCameraId(II)I

    move-result v6

    .line 68
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 69
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCurrentCameraId()I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 70
    invoke-virtual {v4, v8}, Lcom/android/camera/CameraHolder;->release(Z)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 74
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraManager$CameraProxy;->getCameraState()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    .line 75
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    :cond_3
    :goto_0
    if-eqz v8, :cond_5

    .line 83
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v8, 0xa3

    if-eq v7, v8, :cond_4

    const/16 v8, 0xab

    if-eq v7, v8, :cond_4

    goto :goto_1

    .line 86
    :cond_4
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v1, v5, v7}, Lcom/android/camera/module/BaseModule;->prepareOpenCamera(II)V

    .line 89
    :goto_1
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-static {v5, p0}, Lcom/android/camera/Util;->openCamera(II)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p0

    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_9

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 100
    :cond_6
    invoke-virtual {v1, p0}, Lcom/android/camera/module/BaseModule;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    .line 103
    invoke-virtual {v4, p0, v6}, Lcom/android/camera/CameraHolder;->injectDummyParameters(Lcom/android/camera/CameraManager$CameraProxy;I)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    if-nez p0, :cond_7

    const-string p0, "null parameters"

    .line 128
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xe7

    .line 129
    invoke-static {v2, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 132
    :cond_7
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 133
    invoke-static {v1, v3}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 136
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/camera/CameraManager;->setStashParameters(Landroid/hardware/Camera$Parameters;)V

    const/16 v3, 0x3c

    .line 137
    invoke-static {p0, v3}, Lcom/android/camera/CameraSettings;->initSupportedVideoHsrSize(Landroid/hardware/Camera$Parameters;I)V

    .line 138
    invoke-virtual {v1, p0}, Lcom/android/camera/module/BaseModule;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const-string p0, "CameraStartUpThread done"

    .line 139
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 96
    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fail to open camera "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xe6

    .line 97
    invoke-static {v2, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0xe3

    .line 145
    invoke-static {v2, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0xe2

    .line 142
    invoke-static {v2, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
