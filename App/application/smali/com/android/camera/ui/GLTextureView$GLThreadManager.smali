.class Lcom/android/camera/ui/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# instance fields
.field private mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/GLTextureView$1;)V
    .locals 0

    .line 1614
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 1

    .line 1698
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1703
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1709
    iput-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    .line 1679
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_3

    .line 1680
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLESVersion()V

    const/16 v0, 0x1f01

    .line 1681
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 1682
    iget v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    .line 1684
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1685
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1687
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1693
    iput-boolean v3, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)V
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1661
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    .line 1663
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    monitor-enter p0

    .line 1670
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    monitor-enter p0

    .line 1674
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1675
    iget-boolean v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/android/camera/ui/GLTextureView$GLThread;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1621
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/camera/ui/GLTextureView$GLThread;->access$1202(Lcom/android/camera/ui/GLTextureView$GLThread;Z)Z

    .line 1622
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1623
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    .line 1625
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tryAcquireEglContextLocked(Lcom/android/camera/ui/GLTextureView$GLThread;)Z
    .locals 2

    .line 1636
    iget-object v0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 1641
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1642
    iget-boolean p1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz p1, :cond_1

    return v1

    .line 1649
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    if-eqz p0, :cond_2

    .line 1650
    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 1637
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$GLThreadManager;->mEglOwner:Lcom/android/camera/ui/GLTextureView$GLThread;

    .line 1638
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method
