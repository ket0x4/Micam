.class public Lcom/android/camera/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"

# interfaces
.implements Lcom/android/camera/Clapper$ClapperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AudioCapture$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/camera/AudioCapture$Callback;

.field private mClapper:Lcom/android/camera/Clapper;

.field private mIsRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/AudioCapture$Callback;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    .line 21
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    return-void
.end method


# virtual methods
.method public heard(F)V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    return p0
.end method

.method public pause()V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    .line 46
    iget-object p0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    invoke-virtual {p0}, Lcom/android/camera/Clapper;->stop()V

    return-void
.end method

.method public releaseShutter()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->readyToAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object p0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {p0}, Lcom/android/camera/AudioCapture$Callback;->releaseShutter()V

    :cond_0
    return-void
.end method

.method public start()Z
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 30
    :cond_0
    new-instance v0, Lcom/android/camera/Clapper;

    invoke-direct {v0, p0}, Lcom/android/camera/Clapper;-><init>(Lcom/android/camera/Clapper$ClapperListener;)V

    iput-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    .line 31
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    invoke-virtual {v0}, Lcom/android/camera/Clapper;->start()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
