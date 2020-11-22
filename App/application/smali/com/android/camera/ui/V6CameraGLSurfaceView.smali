.class public Lcom/android/camera/ui/V6CameraGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "V6CameraGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/camera/Camera;

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

.field private mCatchUnTapableEvent:Z

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private final mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mHeight:I

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCount:I

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCountingStart:J

    .line 49
    iput-boolean p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    .line 50
    new-instance v0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/ui/V6CameraGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 67
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 68
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const/4 p2, 0x1

    .line 69
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 70
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 71
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    const/16 v1, 0x2d0

    mul-int/2addr v0, v1

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v0, v2

    invoke-interface {p2, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 75
    :cond_0
    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method public getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    return-object p0
.end method

.method public isBusy()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 191
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->deleteProgram()V

    .line 194
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 236
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    const/4 p1, 0x0

    .line 238
    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    .line 240
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    monitor-enter p1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 242
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 244
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    return-void

    :catchall_0
    move-exception p0

    .line 244
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 1

    .line 183
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 184
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 205
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->getEffectRender()Lcom/android/camera/effect/renders/EffectRenderGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/EffectController;->addChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gl10: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLRootView"

    .line 163
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    .line 165
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 166
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 168
    iput p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mWidth:I

    .line 169
    iput p3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mHeight:I

    .line 170
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {p1, p2, p3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    .line 172
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    .line 173
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 175
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 177
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string p2, "GLRootView"

    const-string v0, "onSurfaceCreated"

    .line 128
    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLObject has changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 140
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-static {p1}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 141
    new-instance p1, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    .line 149
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 152
    iget-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 154
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 143
    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->setScaleDetectorEnable(Z)V

    .line 113
    iput-boolean v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setScaleDetectorEnable(Z)V

    .line 116
    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    .line 119
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    :cond_4
    iget-boolean p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCatchUnTapableEvent:Z

    return p0
.end method

.method public requestRender()V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    .line 89
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v1, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/CameraScreenNail;Lcom/android/camera/module/encoder/MediaVideoEncoder;)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
