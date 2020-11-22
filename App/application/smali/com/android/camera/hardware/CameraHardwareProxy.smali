.class public Lcom/android/camera/hardware/CameraHardwareProxy;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;,
        Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;
    }
.end annotation


# static fields
.field private static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mHalCoordinate:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x3e8

    const/16 v2, -0x3e8

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    return-void
.end method

.method public static declared-synchronized getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;
    .locals 2

    const-class v0, Lcom/android/camera/hardware/CameraHardwareProxy;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    if-nez v1, :cond_4

    .line 143
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-direct {v1}, Lcom/android/camera/hardware/QcomCameraProxy;-><init>()V

    sput-object v1, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    new-instance v1, Lcom/android/camera/hardware/LCCameraProxy;

    invoke-direct {v1}, Lcom/android/camera/hardware/LCCameraProxy;-><init>()V

    sput-object v1, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    new-instance v1, Lcom/android/camera/hardware/NvidiaCameraProxy;

    invoke-direct {v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;-><init>()V

    sput-object v1, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    new-instance v1, Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-direct {v1}, Lcom/android/camera/hardware/MTKCameraProxy;-><init>()V

    sput-object v1, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 152
    :cond_3
    new-instance v1, Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-direct {v1}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    sput-object v1, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    .line 155
    :cond_4
    :goto_0
    sget-object v1, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getWBCurrentCCT(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "wb-manual-cct"

    .line 647
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_0
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 341
    invoke-interface {v0, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 342
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private strToSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 3

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x78

    .line 771
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "CameraHardwareProxy"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 773
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 774
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 778
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/hardware/Camera$Size;->width:I

    .line 779
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/hardware/Camera$Size;->height:I

    return-object p1

    :cond_1
    const-string p1, "getPictureSize fail"

    .line 782
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid size parameter string="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 0

    return-void
.end method

.method public clearExposureTime(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    return-void
.end method

.method public clearManuallyISO(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    return-void
.end method

.method public clearManuallyWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    return-void
.end method

.method public disableAiAsd(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string p0, "xiaomi-ai-asd-type"

    const/4 v0, -0x1

    .line 608
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public disableBokeh(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string p0, "xiaomi-mi-bokeh-type"

    const/4 v0, -0x1

    .line 597
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public enableAiAsd(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string p0, "xiaomi-ai-asd-type"

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public enableBokeh(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string p0, "xiaomi-mi-bokeh-type"

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getExposureCompensationStep(Landroid/hardware/Camera$Parameters;)F
    .locals 1

    .line 838
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CameraHardwareProxy"

    const-string v0, "getExposureCompensationStep error"

    .line 840
    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getMaxExposureCompensation(Landroid/hardware/Camera$Parameters;)I
    .locals 1

    .line 820
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CameraHardwareProxy"

    const-string v0, "getMaxExposureCompensation error"

    .line 822
    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinExposureCompensation(Landroid/hardware/Camera$Parameters;)I
    .locals 1

    .line 829
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CameraHardwareProxy"

    const-string v0, "getMinExposureCompensation error"

    .line 831
    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getMinExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRotation(Landroid/hardware/Camera$Parameters;)I
    .locals 0

    const-string p0, "rotation"

    .line 577
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 581
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "xiaomi-still-beautify-values"

    .line 496
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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

    .line 350
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

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

    .line 573
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 3
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

    .line 354
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    .line 355
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 357
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 358
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    if-gt v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    if-gt v1, v2, :cond_0

    .line 359
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getSupportedSceneModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
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

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "xiaomi-time-watermark"

    .line 512
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "video-flip"

    .line 815
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .locals 0

    .line 632
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 633
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardwareProxy;->getWBCurrentCCT(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 636
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFocusSuccessful(Landroid/hardware/Camera;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .locals 4

    const/4 p0, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-array v1, p0, [Ljava/lang/Class;

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "getFlashOn"

    const-string v3, "()I"

    .line 185
    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    aget-object v1, v1, v0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, p1, v3}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :catch_0
    const-string p0, "CameraHardwareProxy"

    const-string p1, "isNeedFlashOn IllegalArgumentException"

    .line 190
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public isPreviewEnabled(Landroid/hardware/Camera;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 0

    .line 159
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method

.method public setAnalyzeAgeGender(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string p2, "xiaomi-face-age-gender-analyze"

    .line 701
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 792
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set mi-auto-hdr "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "mi-auto-hdr"

    .line 793
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyBlusher(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 488
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyBlusher: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-blusher-ratio"

    .line 489
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyChin(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 453
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyChin: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-chin-ratio"

    .line 454
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyEnlargeEye: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "xiaomi-beauty-enlarge-eye"

    .line 431
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "xiaomi-beauty-enlarge-eye-ratio"

    .line 433
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBeautifyEyebrowDye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyEyebrowDye: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-eyebrow-dye-ratio"

    .line 474
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyJellyLips(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyJellyLips: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-jelly-lips-ratio"

    .line 484
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyLips(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyLips: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-lips-ratio"

    .line 449
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyNeck(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 458
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyNeck: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-neck-ratio"

    .line 459
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyNose(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 438
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyNose: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-nose-ratio"

    .line 439
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyPupilLine(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 478
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyPupilLine: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-pupil-line-ratio"

    .line 479
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyRisorius(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 443
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyRisorius: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-risorius-ratio"

    .line 444
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifySilmNose(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifySilmNose: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-slim-nose-ratio"

    .line 469
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifySkinColor: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "xiaomi-beauty-skin-color"

    .line 395
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "xiaomi-beauty-skin-color-ratio"

    .line 397
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 417
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifySkinSmooth: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "xiaomi-beauty-skin-smooth"

    .line 419
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "xiaomi-beauty-skin-smooth-ratio"

    .line 421
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifySlimFace: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "xiaomi-beauty-slim-face"

    .line 407
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "xiaomi-beauty-slim-face-ratio"

    .line 409
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBeautifySmile(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifySmile: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-smile-ratio"

    .line 464
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautifyVersion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautifyVersion: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-beauty-algo-version"

    .line 386
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautyRank(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const-string p2, "xiaomi-face-beauty-rank"

    .line 697
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBeautyRecord(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBeautyRecord: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p2, "xiaomi-beauty-record"

    .line 376
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBurstShotSpeed(Landroid/hardware/Camera;I)V
    .locals 0

    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 0

    return-void
.end method

.method public setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "xiaomi-dualcam-watermark"

    .line 528
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3

    .line 708
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFaceWatermark v:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "on"

    const-string v0, "off"

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "xiaomi-face-watermark"

    .line 709
    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    const-string p2, "watermark_age"

    .line 711
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFlashModeSafely(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    .line 197
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p0

    .line 198
    invoke-static {p2, p0}, Lcom/android/camera/hardware/CameraHardwareProxy;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setFlashModel: flashMode = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraHardwareProxy"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
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

    .line 532
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 533
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    .line 534
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFocusAreas fail :"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CameraHardwareProxy"

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 536
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    return-void

    .line 541
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    .line 667
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public setFocusPosition(Landroid/hardware/Camera$Parameters;I)V
    .locals 0

    return-void
.end method

.method public setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "mi-hdr"

    .line 589
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLongshotMode(Landroid/hardware/Camera;Z)V
    .locals 0

    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 5

    .line 214
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedMetadata()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    const-string v0, "CameraHardwareProxy"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string p0, "android.hardware.Camera$CameraMetaDataCallback"

    .line 218
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    aput-object p0, v4, v2

    new-instance p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;

    invoke-direct {p0, p2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;-><init>(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    invoke-static {v3, v4, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    new-array p2, v1, [Ljava/lang/Class;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, p2, v2

    const-string v3, "setMetadataCb"

    const-string v4, "(Landroid/hardware/Camera$CameraMetaDataCallback;)V"

    .line 223
    invoke-static {p2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 226
    aget-object p2, p2, v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v3, p2, p1, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ClassNotFoundException"

    .line 231
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "IllegalArgumentException"

    .line 229
    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
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

    .line 545
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 546
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    .line 547
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setMeteringAreas fail :"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CameraHardwareProxy"

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 549
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    return-void

    .line 554
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    return-void
.end method

.method public setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "xiaomi-multi-face-beautify"

    .line 561
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "night-anti-motion"

    .line 628
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "night-shot"

    .line 618
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOIS(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .line 164
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    sget-boolean p0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 167
    throw p0
.end method

.method public setSREnabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0

    .line 805
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p2, "xiaomi-super-resolution"

    .line 806
    invoke-virtual {p1, p2, p0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenLight(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3

    .line 642
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set xiaomi-screen-light "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "true"

    const-string v1, "false"

    if-eqz p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CameraHardwareProxy"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string p0, "xiaomi-screen-light"

    .line 643
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 370
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setStillBeautify: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "xiaomi-still-beautify-values"

    .line 371
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSuperNight(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set mi-supernight -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "true"

    const-string v1, "false"

    if-eqz p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CameraHardwareProxy"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string p0, "mi-supernight"

    .line 268
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "xiaomi-time-watermark"

    .line 503
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "watermark"

    .line 505
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    const-string p0, "xiaomi-time-watermark-value"

    .line 519
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "watermark_value"

    .line 521
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1

    .line 810
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set video-flip "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraHardwareProxy"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "video-flip"

    .line 811
    invoke-virtual {p1, p0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    .line 730
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected splitSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 755
    :cond_0
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 756
    invoke-interface {v1, p2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 757
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 758
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 759
    invoke-direct {p0, p1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->strToSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 760
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 762
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object p2
.end method

.method public startObjectTrack(Landroid/hardware/Camera;IIII)V
    .locals 0

    return-void
.end method

.method public stopObjectTrack(Landroid/hardware/Camera;)V
    .locals 0

    return-void
.end method
