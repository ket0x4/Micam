.class public Lcom/android/camera/AudioCaptureManager;
.super Ljava/lang/Object;
.source "AudioCaptureManager.java"

# interfaces
.implements Lcom/android/camera/AudioCapture$Callback;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioCapture:Lcom/android/camera/AudioCapture;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    .line 18
    iput-object p2, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    .line 19
    iget-object p1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    if-eqz p1, :cond_0

    .line 22
    new-instance p1, Lcom/android/camera/AudioCapture;

    invoke-direct {p1, p0}, Lcom/android/camera/AudioCapture;-><init>(Lcom/android/camera/AudioCapture$Callback;)V

    iput-object p1, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CameraModule == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    .line 81
    iget-object p0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    :cond_0
    return-void
.end method

.method public hideDelayNumber()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_0

    .line 57
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideDelayNumber()V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {p0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 90
    iget-object p0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v0, 0x7f0f0107

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->readyToAudioCapture()Z

    move-result p0

    return p0
.end method

.method public releaseShutter()V
    .locals 2

    .line 69
    iget-object p0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    const/16 v0, 0x2bc

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->startDelayedCaptureMessage(II)V

    return-void
.end method

.method public setDelayStep(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 48
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    add-int/lit8 p1, p1, 0x1

    .line 49
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showDelayNumber(I)V

    :cond_0
    return-void
.end method
