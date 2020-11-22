.class Lcom/android/camera/ui/V6CameraGLSurfaceView$1;
.super Ljava/lang/Object;
.source "V6CameraGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field final synthetic val$encoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

.field final synthetic val$screenNail:Lcom/android/camera/CameraScreenNail;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/CameraScreenNail;Lcom/android/camera/module/encoder/MediaVideoEncoder;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;->this$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;->val$screenNail:Lcom/android/camera/CameraScreenNail;

    iput-object p3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;->val$encoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;->val$screenNail:Lcom/android/camera/CameraScreenNail;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;->val$encoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;->val$encoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/module/encoder/MediaVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;)V

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;->val$screenNail:Lcom/android/camera/CameraScreenNail;

    iget-object p0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView$1;->val$encoder:Lcom/android/camera/module/encoder/MediaVideoEncoder;

    invoke-virtual {v1, p0}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoEncoder(Lcom/android/camera/module/encoder/MediaVideoEncoder;)V

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
