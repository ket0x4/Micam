.class public Lcom/android/camera/hardware/QcomCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "QcomCameraProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method

.method private setFocusPosition(Landroid/hardware/Camera$Parameters;II)V
    .locals 0

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "manual-focus-pos-type"

    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "manual-focus-position"

    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearExposureTime(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    return-void
.end method

.method public clearManuallyISO(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string v0, "auto"

    .line 325
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public clearManuallyWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string v0, "auto"

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public getChromaFlash(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "chroma-flash"

    .line 465
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "exposure-time"

    .line 331
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInternalPreviewSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "internal-restart"

    .line 492
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getMaxContrast(Landroid/hardware/Camera$Parameters;)I
    .locals 1

    :try_start_0
    const-string p0, "max-contrast"

    .line 391
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMaxContrast fail."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QcomCameraProxy"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa

    return p0
.end method

.method public getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "max-exposure-time"

    .line 294
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 297
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    .line 299
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :cond_3
    :goto_0
    return p0
.end method

.method public getMaxIso(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "max-iso"

    .line 371
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMaxSaturation(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "max-saturation"

    .line 379
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMaxSharpness(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "max-sharpness"

    .line 405
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMinExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 2

    const-string p0, "min-exposure-time"

    .line 280
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    .line 285
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMinIso(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "min-iso"

    .line 375
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMorphoHHT(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "morpho-hht"

    .line 440
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 441
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "snapshot-picture-flip"

    .line 343
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "auto-exposure-values"

    .line 518
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 519
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "denoise-values"

    .line 347
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "iso-values"

    .line 356
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedPortraitPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    const-string v0, "bokeh-picture-size"

    .line 611
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->splitSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "touch-af-aec-values"

    .line 415
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "video-hfr-values"

    .line 469
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getUbiFocus(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "af-bracket"

    .line 457
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "video-hfr"

    .line 474
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFocusSuccessful(Landroid/hardware/Camera;)Z
    .locals 5

    .line 126
    sget-boolean p0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const-string v0, "camera_focus_success_flag"

    .line 129
    invoke-static {v0, p0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, p0

    const-string v3, "getFocusState"

    const-string v4, "()I"

    .line 133
    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 135
    aget-object v2, v2, p0

    new-array v4, p0, [Ljava/lang/Object;

    invoke-virtual {v3, v2, p1, v4}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p1, :cond_1

    move p0, v1

    :cond_1
    return p0

    :catch_0
    const-string p0, "QcomCameraProxy"

    const-string p1, "isFocusSuccessful IllegalArgumentException"

    .line 138
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 127
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    const-string p1, "focus-done"

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "snapshot-picture-flip"

    .line 482
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "flip-h"

    .line 483
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "flip-v"

    .line 484
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .locals 1

    .line 584
    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-nez v0, :cond_0

    .line 585
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->isNeedFlashOn(Landroid/hardware/Camera;)Z

    move-result p0

    return p0

    .line 587
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    const-string p1, "flash-on"

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isParallelProcess(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "xiaomi-parallel-process-result"

    .line 596
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isZSLHDRSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "zsl-hdr-supported"

    .line 496
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "true"

    .line 497
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "zsl"

    .line 514
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "android.hardware.Camera"

    .line 94
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "openLegacy"

    const-string v5, "(II)Landroid/hardware/Camera;"

    .line 95
    invoke-static {v2, v3, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 97
    aget-object v2, v2, v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    .line 97
    invoke-virtual {v3, v2, v1, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openLegacy failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", using open instead"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QcomCameraProxy"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 106
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public setAoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "sensor-hdr"

    .line 187
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "auto-exposure"

    .line 335
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraMode(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    const-string p0, "camera-mode"

    .line 488
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setChromaFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "chroma-flash"

    .line 461
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContinuousIso(Landroid/hardware/Camera$Parameters;I)V
    .locals 1

    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setContinuousIso: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QcomCameraProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "continuous-iso"

    .line 367
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    if-ltz p2, :cond_0

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/QcomCameraProxy;->getMaxContrast(Landroid/hardware/Camera$Parameters;)I

    move-result p0

    if-gt p2, p0, :cond_0

    .line 400
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "contrast"

    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "denoise"

    .line 352
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string p2, "xiaomi-is-parallel-process"

    .line 600
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExposureTime(Landroid/hardware/Camera$Parameters;I)V
    .locals 5

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setExposureTime: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QcomCameraProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/android/camera/Device;->isFloatExposureTime()Z

    move-result p0

    const-string v0, "exposure-time"

    if-eqz p0, :cond_0

    int-to-double v1, p2

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    .line 306
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setFaceDetectionMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "face-detection"

    .line 424
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    const-string v0, "manual"

    .line 229
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_0

    :cond_0
    const-string p0, "lock"

    .line 231
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p2, "auto"

    .line 234
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public setFocusPosition(Landroid/hardware/Camera$Parameters;I)V
    .locals 1

    rsub-int p2, p2, 0x3e8

    .line 265
    div-int/lit8 p2, p2, 0xa

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/hardware/QcomCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;II)V

    return-void
.end method

.method public setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 570
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string v0, "true"

    .line 571
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 573
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/QcomCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    .line 575
    invoke-static {}, Lcom/android/camera/Device;->isNewHdrParamKeyUsed()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ae-bracket-hdr"

    const-string p2, "AE-Bracket"

    .line 577
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "capture-burst-exposures"

    const-string p2, "-6,8,0"

    .line 578
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHandNight(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 216
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "morpho-hht"

    .line 217
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 361
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setISOValue: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QcomCameraProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "iso"

    .line 362
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLongshotMode(Landroid/hardware/Camera;Z)V
    .locals 4

    const/4 p0, 0x1

    :try_start_0
    new-array v0, p0, [Ljava/lang/Class;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setLongshot"

    const-string v3, "(Z)V"

    .line 115
    invoke-static {v0, v1, v3}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    aget-object v0, v0, v2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {v1, v0, p1, p0}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "QcomCameraProxy"

    const-string p1, "setLongshotMode IllegalArgumentException"

    .line 120
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 201
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "morpho-hdr"

    .line 202
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "xiaomi-multi-face-beautify"

    .line 209
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 528
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string v0, "true"

    .line 529
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/QcomCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 532
    sget-boolean p0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz p0, :cond_1

    .line 535
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isNewHdrParamKeyUsed()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ae-bracket-hdr"

    const-string p2, "AE-Bracket"

    .line 537
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "capture-burst-exposures"

    const-string p2, "0"

    .line 538
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 550
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string v0, "true"

    .line 551
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/QcomCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 554
    sget-boolean p0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz p0, :cond_1

    .line 557
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isNewHdrParamKeyUsed()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ae-bracket-hdr"

    const-string p2, "AE-Bracket"

    .line 559
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "capture-burst-exposures"

    const-string p2, "0,0,0"

    .line 560
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOIS(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "enable"

    goto :goto_0

    :cond_0
    const-string p0, "disable"

    :goto_0
    const-string p2, "ois-values"

    .line 506
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ois"

    .line 508
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setParallelProcessFilePath(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "xiaomi-parallel-path"

    .line 603
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "snapshot-picture-flip"

    .line 339
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPortraitMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "xiaomi-portrait-mode"

    .line 592
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    if-ltz p2, :cond_0

    const-string p0, "max-saturation"

    .line 383
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    if-gt p2, p0, :cond_0

    .line 384
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "saturation"

    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSharpness(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    if-ltz p2, :cond_0

    const-string p0, "max-sharpness"

    .line 409
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    if-gt p2, p0, :cond_0

    .line 410
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "sharpness"

    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTouchAfAec(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "touch-af-aec"

    .line 420
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUbiFocus(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "af-bracket"

    .line 453
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "video-hdr"

    .line 194
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "video-hfr"

    .line 478
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V
    .locals 1

    const-string p0, "manual-wb-type"

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string p0, "manual-wb-value"

    .line 260
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    const-string v0, "manual"

    .line 238
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/QcomCameraProxy;->setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_0

    :cond_0
    const-string v0, "measure"

    .line 240
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "auto"

    .line 243
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "zsl"

    .line 428
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startObjectTrack(Landroid/hardware/Camera;IIII)V
    .locals 5

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startObjectTrack left="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " top="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " width="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QcomCameraProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :try_start_0
    new-array v1, p0, [Ljava/lang/Class;

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "startTrack"

    const-string v4, "(IIII)V"

    .line 149
    invoke-static {v1, v2, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    aget-object v1, v1, v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p0

    const/4 p0, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p0

    const/4 p0, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p0

    invoke-virtual {v2, v1, p1, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "startObjectTrack IllegalArgumentException"

    .line 154
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopObjectTrack(Landroid/hardware/Camera;)V
    .locals 4

    const-string p0, "QcomCameraProxy"

    const-string v0, "stopObjectTrack"

    .line 160
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "stopTrack"

    const-string v3, "()V"

    .line 163
    invoke-static {v0, v1, v3}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    aget-object v0, v0, v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "stopObjectTrack IllegalArgumentException"

    .line 168
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
