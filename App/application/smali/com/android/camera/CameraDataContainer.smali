.class public Lcom/android/camera/CameraDataContainer;
.super Ljava/lang/Object;
.source "CameraDataContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraDataContainer"

.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sInstance:Lcom/android/camera/CameraDataContainer;


# instance fields
.field private mAuxBackCameraId:I

.field private mAuxFrontCameraId:I

.field private final mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mMainBackCameraId:I

.field private mMainFrontCameraId:I

.field private mMuxBackCameraId:I

.field private mMuxFrontCameraId:I

.field private final mNumberOfCameras:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    .line 19
    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mMainFrontCameraId:I

    .line 21
    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mMuxBackCameraId:I

    .line 22
    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    .line 24
    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mMuxFrontCameraId:I

    .line 25
    iput v0, p0, Lcom/android/camera/CameraDataContainer;->mAuxFrontCameraId:I

    .line 44
    sget-object v1, Lcom/android/camera/CameraDataContainer;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 45
    array-length v3, v1

    iput v3, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    .line 46
    iput-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    goto :goto_1

    .line 48
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    .line 49
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    move v1, v2

    .line 50
    :goto_0
    iget v3, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    if-ge v1, v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v4, v3, v1

    .line 52
    iget-object v3, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v3, v3, v1

    invoke-static {v1, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    if-ge v2, v1, :cond_8

    .line 59
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_2

    .line 60
    iput v2, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    goto :goto_2

    .line 61
    :cond_2
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mMainFrontCameraId:I

    const/4 v3, 0x1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v3, :cond_3

    .line 62
    iput v2, p0, Lcom/android/camera/CameraDataContainer;->mMainFrontCameraId:I

    goto :goto_2

    .line 63
    :cond_3
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_4

    .line 64
    iput v2, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    goto :goto_2

    .line 65
    :cond_4
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mMuxBackCameraId:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_5

    .line 66
    iput v2, p0, Lcom/android/camera/CameraDataContainer;->mMuxBackCameraId:I

    goto :goto_2

    .line 67
    :cond_5
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mAuxFrontCameraId:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v3, :cond_6

    .line 68
    iput v2, p0, Lcom/android/camera/CameraDataContainer;->mAuxFrontCameraId:I

    goto :goto_2

    .line 69
    :cond_6
    iget v1, p0, Lcom/android/camera/CameraDataContainer;->mMuxFrontCameraId:I

    if-ne v1, v0, :cond_7

    iget-object v1, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v3, :cond_7

    .line 70
    iput v2, p0, Lcom/android/camera/CameraDataContainer;->mMuxFrontCameraId:I

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    :cond_8
    sget-object v0, Lcom/android/camera/CameraDataContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNumberOfCameras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mMainBackCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mMainFrontCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraDataContainer;->mMainFrontCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mAuxBackCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mMuxBackCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraDataContainer;->mMuxBackCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mAuxFrontCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraDataContainer;->mAuxFrontCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mMuxFrontCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mMuxFrontCameraId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/android/camera/CameraDataContainer;
    .locals 2

    .line 33
    sget-object v0, Lcom/android/camera/CameraDataContainer;->sInstance:Lcom/android/camera/CameraDataContainer;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/android/camera/CameraDataContainer;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraDataContainer;->sInstance:Lcom/android/camera/CameraDataContainer;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/android/camera/CameraDataContainer;

    invoke-direct {v1}, Lcom/android/camera/CameraDataContainer;-><init>()V

    sput-object v1, Lcom/android/camera/CameraDataContainer;->sInstance:Lcom/android/camera/CameraDataContainer;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/CameraDataContainer;->sInstance:Lcom/android/camera/CameraDataContainer;

    return-object v0
.end method


# virtual methods
.method public getActualOpenCameraId(II)I
    .locals 5

    .line 126
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 127
    :goto_1
    sget-object v2, Lcom/android/camera/CameraDataContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActualOpenCameraId cameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; currentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    if-nez p1, :cond_2

    .line 137
    iget p2, p0, Lcom/android/camera/CameraDataContainer;->mMuxBackCameraId:I

    if-eq p2, v0, :cond_2

    move p1, p2

    goto/16 :goto_3

    :cond_2
    if-ne p1, v1, :cond_6

    .line 139
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mMuxFrontCameraId:I

    if-eq p0, v0, :cond_6

    :goto_2
    move p1, p0

    goto/16 :goto_3

    .line 172
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p2

    if-ne p1, p2, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoIntelligentSwitch()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 173
    iget p1, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    goto :goto_3

    .line 159
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 160
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSwitchCameraZoomMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getCameraZoomMode(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "wide"

    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    goto :goto_2

    :cond_3
    const-string v0, "tele"

    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 165
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    goto :goto_2

    .line 147
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p2

    if-ne p1, p2, :cond_6

    .line 148
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result p1

    if-nez p1, :cond_4

    .line 149
    invoke-static {}, Lcom/android/camera/Device;->isSupportedCaptureIntelligentSwitch()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget p1, p0, Lcom/android/camera/CameraDataContainer;->mMuxBackCameraId:I

    if-eq p1, v0, :cond_5

    goto :goto_3

    .line 152
    :cond_5
    iget p1, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    goto :goto_3

    .line 179
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p2

    if-ne p1, p2, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoIntelligentSwitch()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 180
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoQuality()I

    move-result p2

    .line 181
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p2

    if-nez p2, :cond_6

    .line 182
    iget p1, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    :cond_6
    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public getAuxBackCameraId()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mAuxBackCameraId:I

    return p0
.end method

.method public getAuxFrontCameraId()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mAuxFrontCameraId:I

    return p0
.end method

.method public getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 2

    if-ltz p1, :cond_0

    .line 90
    iget v0, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    if-ge p1, v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/android/camera/CameraDataContainer;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object p0, p0, p1

    return-object p0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid camera id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFrontCameraId()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mMainFrontCameraId:I

    return p0
.end method

.method public getFrontMuxCameraId()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mMuxFrontCameraId:I

    return p0
.end method

.method public getMainBackCameraId()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mMainBackCameraId:I

    return p0
.end method

.method public getMuxCameraId()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mMuxBackCameraId:I

    return p0
.end method

.method public getNumberOfCameras()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mNumberOfCameras:I

    return p0
.end method

.method public hasMuxCamera()Z
    .locals 0

    .line 121
    iget p0, p0, Lcom/android/camera/CameraDataContainer;->mMuxBackCameraId:I

    if-lez p0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->isForceCamera0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
