.class public Lcom/android/camera/hardware/NvidiaCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "NvidiaCameraProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method

.method private static areaListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 460
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 466
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Area;

    const-string v4, "("

    .line 467
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v4, v3, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 469
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v5, v3, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v5, v3, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    iget-object v5, v3, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget v3, v3, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 477
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_1

    .line 479
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 3

    const/4 p0, 0x1

    :try_start_0
    new-array p0, p0, [Ljava/lang/Class;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "cancelPicture"

    const-string v2, "()V"

    .line 86
    invoke-static {p0, v0, v2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    .line 87
    aget-object p0, p0, v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NvidiaCameraProxy"

    const-string p1, "cancelContinuousMode IllegalArgumentException"

    .line 90
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public clearExposureTime(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    return-void
.end method

.method public getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "nv-aohdr-enable"

    .line 211
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAutoRotation(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "nv-auto-rotation"

    .line 125
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "nv-picture-iso"

    .line 187
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "nv-nsl-num-buffers"

    .line 238
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
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

    const-string v0, "flash-mode-values"

    .line 417
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "off,on,auto,red-eye,torch"

    .line 423
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 419
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNvExposureTime(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "nv-exposure-time"

    .line 377
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "nv-disable-preview-pause"

    .line 302
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 303
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
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

    .line 393
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 395
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "manual"

    .line 396
    invoke-static {p1, p0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "lock"

    .line 399
    invoke-static {p1, p0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
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

    const-string p0, "nv-picture-iso-values"

    .line 412
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 413
    invoke-static {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-array p0, p0, [Ljava/lang/Class;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p0, v0

    const-string v1, "getWbCCT"

    const-string v2, "()I"

    .line 103
    invoke-static {p0, v1, v2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    aget-object p0, p0, v0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "NvidiaCameraProxy"

    const-string p1, "getWBCurrentCCT IllegalArgumentException"

    .line 108
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const-string p0, "nv-flip-still"

    .line 407
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "horizontal"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 6

    const-string p0, "NvidiaCameraProxy"

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "com.nvidia.NvCamera"

    .line 48
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "open"

    const-string v5, "(I)Lcom/nvidia/NvCamera;"

    .line 49
    invoke-static {v2, v3, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    aget-object v2, v2, v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {v3, v2, v1, v0}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera;

    move-object v1, p1

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openCamera fail NoSuchMethodException ownerClazz="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "openCamera IllegalArgumentException"

    .line 58
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "no class found com.nvidia.NvCamera"

    .line 56
    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 219
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-aohdr-enable"

    .line 220
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoRotation(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 117
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-auto-rotation"

    .line 118
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBurstCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 286
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-burst-picture-count"

    .line 287
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorTemperature(Landroid/hardware/Camera$Parameters;I)V
    .locals 1

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-awb-cct-range"

    .line 172
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "nv-contrast"

    .line 345
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEdgeEnhancement(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 355
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-edge-enhancement"

    .line 356
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExposureTime(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 365
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-exposure-time"

    .line 366
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "nv-flip-still"

    .line 133
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 429
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 430
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    .line 431
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setFocusAreas fail :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NvidiaCameraProxy"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 438
    :cond_1
    invoke-static {p2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->areaListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p2, "focus-areas"

    .line 440
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2

    const-string v0, "manual"

    .line 382
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "auto"

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_0

    :cond_0
    const-string p0, "lock"

    .line 385
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 388
    :goto_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public setFocusPosition(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-focus-position"

    .line 160
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHandNight(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 141
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "hand-night"

    .line 142
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "nv-picture-iso"

    .line 180
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 0

    return-void
.end method

.method public setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 445
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 446
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    .line 447
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMeteringAreas fail :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NvidiaCameraProxy"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 454
    :cond_1
    invoke-static {p2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->areaListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p2, "metering-areas"

    .line 456
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 149
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-still-hdr-morpho"

    .line 150
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-nsl-burst-picture-count"

    .line 275
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-nsl-num-buffers"

    .line 253
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x1

    if-eqz p2, :cond_1

    const-string v0, "shot2shot"

    .line 316
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "nv-capture-mode"

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 321
    invoke-virtual {p1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 5

    const-string p0, "NvidiaCameraProxy"

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "native_setCustomParameters"

    const-string v4, "(Ljava/lang/String;)V"

    .line 67
    invoke-static {v1, v2, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    aget-object v1, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v2, v1, p1, v0}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setParameters NoSuchMethodException ownerClazz="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "setParameters IllegalArgumentException"

    .line 74
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    sget-boolean p0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    :cond_1
    return-void
.end method

.method public setPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 294
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-disable-preview-pause"

    .line 295
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-raw-dump-flag"

    .line 204
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    .line 334
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "nv-saturation"

    .line 335
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    const-string v0, "manual"

    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setColorTemperature(Landroid/hardware/Camera$Parameters;I)V

    .line 167
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method
