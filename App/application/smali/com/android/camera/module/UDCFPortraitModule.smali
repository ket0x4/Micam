.class public Lcom/android/camera/module/UDCFPortraitModule;
.super Lcom/android/camera/camera_adapter/CameraQcom;
.source "UDCFPortraitModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;


# static fields
.field private static final TAG:Ljava/lang/String; = "UDCFPortraitModule"


# instance fields
.field private mAFCallbackTimes:I

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mPrimaryFocused:Z

.field private mViceBackCamera:Landroid/hardware/Camera;

.field private mViceFocusStartTime:J

.field private mViceFocused:Z

.field private volatile mViceSnapIdle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceSnapIdle:Z

    .line 39
    new-instance v0, Lcom/android/camera/module/UDCFPortraitModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/UDCFPortraitModule$1;-><init>(Lcom/android/camera/module/UDCFPortraitModule;)V

    iput-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/UDCFPortraitModule;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAFCallbackTimes:I

    return p0
.end method

.method static synthetic access$008(Lcom/android/camera/module/UDCFPortraitModule;)I
    .locals 2

    .line 26
    iget v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAFCallbackTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAFCallbackTimes:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/UDCFPortraitModule;)Landroid/hardware/Camera;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/module/UDCFPortraitModule;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/UDCFPortraitModule;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocused:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/module/UDCFPortraitModule;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocused:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/module/UDCFPortraitModule;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mPrimaryFocused:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/camera/module/UDCFPortraitModule;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mPrimaryFocused:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/module/UDCFPortraitModule;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceSnapIdle:Z

    return p1
.end method

.method private closeBokeh()V
    .locals 3

    .line 112
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBokeh mParameters -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->stopPreview()V

    .line 114
    sget-object p0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v0, "closeBokeh done"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private openBackViceCamera()Landroid/hardware/Camera;
    .locals 2

    .line 91
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getNumberOfCameras()I

    move-result p0

    .line 92
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getAuxBackCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ge p0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->openCamera(I)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private setSlaveParameters()V
    .locals 4

    .line 187
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v1, "setSlaveParameters"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    .line 190
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const-string v1, "on"

    const-string v2, "dual-camera-mode"

    .line 191
    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dual-camera-id"

    const-string v3, "0"

    .line 192
    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dual-camera-main-camera"

    const-string v3, "false"

    .line 193
    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "zsl"

    .line 195
    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/android/camera/module/UDCFPortraitModule;->setVicePreviewSize(Landroid/hardware/Camera$Parameters;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/android/camera/module/UDCFPortraitModule;->setVicePictureSize(Landroid/hardware/Camera$Parameters;)V

    .line 198
    iget-object p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private setVicePictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-direct {p0, v0}, Lcom/android/camera/module/UDCFPortraitModule;->sortDescently(Ljava/util/List;)V

    .line 213
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    .line 214
    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v1

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, p0

    div-float/2addr v2, v3

    mul-int/2addr v1, p0

    int-to-float p0, v1

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 217
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v3, v2

    .line 218
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v3, p0

    if-gtz v3, :cond_1

    .line 220
    sget-object p0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vice camera desired picture size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget p0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v0, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setVicePreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const/16 p0, 0x280

    const/16 v0, 0x1e0

    .line 203
    invoke-virtual {p1, p0, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    return-void
.end method

.method private sortDescently(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/android/camera/module/UDCFPortraitModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/UDCFPortraitModule$2;-><init>(Lcom/android/camera/module/UDCFPortraitModule;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private takeVicePicture()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 265
    invoke-static {}, Lcom/android/camera/Device;->isUDCFPortraitNeedRotation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 269
    sget-object v1, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set vice camera rotation -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/android/camera/module/UDCFPortraitModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/module/UDCFPortraitModule$3;-><init>(Lcom/android/camera/module/UDCFPortraitModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceSnapIdle:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAFCallbackTimes:I

    .line 290
    iput-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mPrimaryFocused:Z

    .line 291
    iput-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocused:Z

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocusStartTime:J

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    .line 294
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_1
    const/4 v0, 0x2

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    :cond_2
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .line 305
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->cancelAutoFocus()V

    .line 306
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 2

    .line 256
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->takeVicePicture()V

    :cond_0
    return v0
.end method

.method public closeCamera()V
    .locals 2

    .line 140
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 142
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 144
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public doLaterRelease()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->closeBokeh()V

    .line 122
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->doLaterRelease()V

    return-void
.end method

.method public isDoingAction()Z
    .locals 1

    .line 248
    sget-boolean v0, Lcom/android/camera/Device;->IS_E6:Z

    if-eqz v0, :cond_2

    .line 249
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceSnapIdle:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 251
    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result p0

    return p0
.end method

.method public onCameraSwitched()V
    .locals 3

    .line 127
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v1, "onCameraSwitched"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->openBackViceCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    .line 132
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSwitched, vice back ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onCameraSwitched()V

    return-void
.end method

.method public onCreate(II)V
    .locals 3

    .line 73
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate moduleIndex -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",camera device -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->openBackViceCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    .line 81
    :cond_0
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back vince camera -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v1, "it is front camera, do nothing."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onCreate(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 102
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->closeBokeh()V

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onPause()V

    return-void
.end method

.method public setCameraParameters(I)V
    .locals 3

    .line 173
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters updateSet -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 175
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 176
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dual-camera-mode"

    const-string v1, "on"

    .line 179
    invoke-virtual {p1, p0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "dual-camera-id"

    const-string v1, "2"

    .line 180
    invoke-virtual {p1, p0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "dual-camera-main-camera"

    const-string v1, "true"

    .line 181
    invoke-virtual {p1, p0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 3

    .line 151
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 156
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->setSlaveParameters()V

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getUDCFExtraSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v1, "failed to set preview display for vice back"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->startPreview()V

    :cond_1
    return-void

    .line 157
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip startpreview 2, camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", aux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 238
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    return-void
.end method
