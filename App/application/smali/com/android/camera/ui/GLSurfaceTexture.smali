.class public Lcom/android/camera/ui/GLSurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;,
        Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;,
        Lcom/android/camera/ui/GLSurfaceTexture$GLThread;,
        Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;,
        Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;,
        Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;,
        Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;
    }
.end annotation


# static fields
.field private static final sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

.field private mGLWrapper:Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mPreservedHeight:I

.field private mPreservedWidth:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mStopped:Z

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1655
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;-><init>(Lcom/android/camera/ui/GLSurfaceTexture$1;)V

    sput-object v0, Lcom/android/camera/ui/GLSurfaceTexture;->sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    .line 1657
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/GLSurfaceTexture;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/GLSurfaceTexture;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextClientVersion:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/GLSurfaceTexture;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLWrapper:Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/GLSurfaceTexture;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mDebugFlags:I

    return p0
.end method

.method static synthetic access$900()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/camera/ui/GLSurfaceTexture;->sGLThreadManager:Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    return-object v0
.end method

.method private checkRenderThreadState()V
    .locals 1

    .line 1534
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-nez p0, :cond_0

    return-void

    .line 1535
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private internalStart()V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    .line 370
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->getRenderMode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 375
    :goto_0
    new-instance v2, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    .line 376
    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedWidth:I

    iget v3, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/GLSurfaceTexture;->setSize(II)V

    if-eq v0, v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setRenderMode(I)V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 383
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->surfaceCreated()V

    :cond_2
    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->finalize()V

    throw v0
.end method

.method public pause()V
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onPause()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onResume()V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->checkRenderThreadState()V

    .line 304
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextClientVersion:I

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    .line 179
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->checkRenderThreadState()V

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$SimpleEGLConfigChooser;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLConfigChooser:Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$DefaultContextFactory;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;Lcom/android/camera/ui/GLSurfaceTexture$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLContextFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$DefaultWindowSurfaceFactory;-><init>(Lcom/android/camera/ui/GLSurfaceTexture$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mEGLWindowSurfaceFactory:Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    .line 189
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 190
    new-instance p1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedWidth:I

    .line 351
    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mPreservedHeight:I

    .line 352
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public startWithShareContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mShareContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 396
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->internalStart()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mGLThread:Lcom/android/camera/ui/GLSurfaceTexture$GLThread;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    .line 406
    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture;->mStopped:Z

    return-void
.end method
