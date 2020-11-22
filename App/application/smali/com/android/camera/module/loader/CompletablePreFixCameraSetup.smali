.class public Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;
.super Ljava/lang/Object;
.source "CompletablePreFixCameraSetup.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mCurrentMode:Lcom/android/camera/module/Module;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mIsFromVoiceControl:Z

.field private mLastMode:Lcom/android/camera/module/Module;

.field private mNeedBlur:Z

.field private mStartFromKeyguard:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/Module;ZLcom/android/camera/CameraScreenNail;Landroid/content/Intent;Landroid/os/Handler;ZZ)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mCurrentMode:Lcom/android/camera/module/Module;

    .line 55
    iput-object p1, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    .line 56
    iput-boolean p3, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mNeedBlur:Z

    .line 57
    iput-object p4, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 58
    iput-object p5, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mIntent:Landroid/content/Intent;

    .line 59
    iput-object p6, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mHandler:Landroid/os/Handler;

    .line 60
    iput-boolean p7, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mStartFromKeyguard:Z

    .line 61
    iput-boolean p8, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mIsFromVoiceControl:Z

    return-void
.end method

.method private closeLastModule()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->unRegisterProtocol()V

    .line 189
    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    .line 191
    iget-object v0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 192
    iget-object p0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/Module;->setActivity(Lcom/android/camera/Camera;)V

    return-void
.end method

.method private isLastModuleAlive()Z
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needEnterStereoMode(II)Z
    .locals 0

    .line 139
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xab

    if-ne p2, p0, :cond_0

    .line 141
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reopenForStereo(Lcom/android/camera/CameraHolder;II)Z
    .locals 1

    .line 145
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xab

    if-eq p3, p0, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/android/camera/CameraHolder;->getLastMode()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/CameraHolder;->getLastMode()I

    move-result p0

    if-eq p3, p0, :cond_1

    .line 148
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result p0

    if-ne p2, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendError(I)V
    .locals 2

    .line 165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 166
    iput v1, v0, Landroid/os/Message;->what:I

    .line 167
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 168
    iget-object p0, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private shouldReopenCamera(Lcom/android/camera/CameraHolder;II)Z
    .locals 3

    .line 152
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xab

    if-eq p3, v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/android/camera/CameraHolder;->getLastMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    return v1

    .line 157
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->reopenForStereo(Lcom/android/camera/CameraHolder;II)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 160
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/CameraHolder;->getCurrentCameraId()I

    move-result p0

    .line 161
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/CameraDataContainer;->getActualOpenCameraId(II)I

    move-result p1

    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CompletablePreFixCameraSetup"

    .line 66
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    .line 69
    invoke-direct {p0}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->isLastModuleAlive()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 70
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v2

    .line 71
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mLastMode:Lcom/android/camera/module/Module;

    invoke-interface {v5}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v5

    .line 72
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v6

    .line 70
    invoke-interface {v2, v4, v5, v6, v3}, Lcom/android/camera/data/backup/DataBackUp;->backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V

    .line 73
    invoke-direct {p0}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->closeLastModule()V

    .line 78
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mNeedBlur:Z

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeBefore()V

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 86
    iget-boolean v4, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mIsFromVoiceControl:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->mStartFromKeyguard:Z

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZ)Landroid/support/v4/util/Pair;

    move-result-object v1

    .line 87
    iget-object v2, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 88
    iget-object v1, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    .line 91
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 96
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getLastMode()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_4

    .line 99
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 101
    invoke-direct {p0, v4, v2, v1}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->shouldReopenCamera(Lcom/android/camera/CameraHolder;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    invoke-virtual {v4, v3}, Lcom/android/camera/CameraHolder;->release(Z)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 105
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getCameraState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 106
    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 115
    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->needEnterStereoMode(II)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "[stereo_setup_process]. enableStereoMode.invoke MtkStereo"

    .line 116
    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    check-cast v3, Lcom/android/camera/hardware/MTKCameraProxy;

    .line 119
    invoke-virtual {v3}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V

    .line 122
    :cond_5
    invoke-static {v2, v1}, Lcom/android/camera/Util;->openCamera(II)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "RuntimeException when open camera"

    .line 130
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xe4

    .line 131
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->sendError(I)V

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "CameraDisabledException when open camera"

    .line 127
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xe3

    .line 128
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->sendError(I)V

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "CameraHardwareException when open camera"

    .line 124
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xe2

    .line 125
    invoke-direct {p0, v0}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;->sendError(I)V

    .line 135
    :cond_6
    :goto_2
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method
