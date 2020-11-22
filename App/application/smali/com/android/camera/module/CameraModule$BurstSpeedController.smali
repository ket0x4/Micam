.class Lcom/android/camera/module/CameraModule$BurstSpeedController;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstSpeedController"
.end annotation


# instance fields
.field private mBurstStartTime:J

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 6209
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0

    .line 6209
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$BurstSpeedController;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V
    .locals 0

    .line 6209
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->onPictureTaken()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/camera/module/CameraModule$BurstSpeedController;)V
    .locals 0

    .line 6209
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->onShutter()V

    return-void
.end method

.method private getBurstSpeed()I
    .locals 4

    .line 6258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    sub-long/2addr v0, v2

    .line 6260
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget p0, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lez p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    .line 6261
    div-long/2addr v2, v0

    long-to-int p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6263
    :goto_0
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_1

    .line 6264
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current burst Speed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method private onPictureTaken()V
    .locals 4

    .line 6238
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6239
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isNeedStopCapture()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lt v2, v1, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x2

    .line 6241
    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .line 6242
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isNeedSlowDown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6243
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$BurstSpeedController;->getBurstSpeed()I

    move-result v0

    int-to-float v0, v0

    .line 6244
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->getSuitableBurstShotSpeed()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-nez v0, :cond_1

    .line 6247
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v2, "current performance is very poor, will set the speed = 1 to native "

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 6249
    :cond_1
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_2

    .line 6250
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set BurstShotSpeed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6252
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setBurstShotSpeed(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onShutter()V
    .locals 4

    .line 6213
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    .line 6216
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    .line 6217
    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6219
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->isNeedStopCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 p0, 0x0

    const/4 v1, 0x2

    .line 6221
    invoke-virtual {v0, p0, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .line 6223
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->getBurstDelay()I

    move-result v0

    if-nez v0, :cond_2

    .line 6225
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0

    .line 6227
    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object p0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6234
    iput-wide v0, p0, Lcom/android/camera/module/CameraModule$BurstSpeedController;->mBurstStartTime:J

    return-void
.end method
