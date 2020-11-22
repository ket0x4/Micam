.class Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private destroySurfaceImp()V
    .locals 4

    .line 876
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_2

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 877
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v1, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v1, "EglHelper"

    const-string v2, "eglMakeCurrent"

    invoke-static {v1, v2, v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v0, :cond_1

    .line 888
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$600(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_1
    const/4 v0, 0x0

    .line 890
    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_2
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 929
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 925
    invoke-static {p1, p2}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 0

    .line 912
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->throwEglException(Ljava/lang/String;I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 0

    .line 916
    invoke-static {p0, p1}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 921
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .line 835
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 836
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz p0, :cond_3

    .line 838
    invoke-static {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$700(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 839
    invoke-static {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$700(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 842
    :cond_0
    invoke-static {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$800(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 845
    invoke-static {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$800(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v1, v4

    .line 848
    :cond_1
    invoke-static {p0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$800(Lcom/android/camera/ui/GLSurfaceTexture;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    .line 849
    new-instance v2, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;

    invoke-direct {v2}, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;-><init>()V

    .line 851
    :cond_2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public createSurface()Z
    .locals 6

    .line 778
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    .line 781
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    .line 784
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    .line 792
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->destroySurfaceImp()V

    .line 797
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 799
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$600(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/camera/ui/GLSurfaceTexture$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 802
    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 805
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string v1, "EglHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 817
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v0, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 822
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const-string v0, "eglMakeCurrent"

    invoke-static {v1, v0, p0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 806
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const/16 v0, 0x300b

    if-ne p0, v0, :cond_4

    const-string p0, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 808
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    .line 785
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mEglConfig not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 782
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglDisplay not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 779
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "egl not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public destroySurface()V
    .locals 0

    .line 872
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->destroySurfaceImp()V

    return-void
.end method

.method public finish()V
    .locals 5

    .line 898
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 901
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$500(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 903
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 906
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 907
    iput-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public start()V
    .locals 6

    .line 723
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 728
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 730
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 738
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GLSurfaceTexture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 743
    iput-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 744
    iput-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 746
    :cond_0
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$300(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/ui/GLSurfaceTexture$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 752
    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$500(Lcom/android/camera/ui/GLSurfaceTexture;)Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v0}, Lcom/android/camera/ui/GLSurfaceTexture;->access$400(Lcom/android/camera/ui/GLSurfaceTexture;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/android/camera/ui/GLSurfaceTexture$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 754
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v2, :cond_1

    .line 762
    iput-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 755
    :cond_1
    iput-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    .line 756
    invoke-direct {p0, v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->throwEglException(Ljava/lang/String;)V

    throw v1

    .line 739
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglInitialize failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 731
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglGetDisplay failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public swap()I
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object p0, p0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x3000

    return p0
.end method
