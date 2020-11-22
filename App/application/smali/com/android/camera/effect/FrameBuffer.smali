.class public Lcom/android/camera/effect/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameBuffer"


# instance fields
.field private mFrameBufferID:[I

.field private mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mTexture:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 16
    iput-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    .line 38
    new-instance v1, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 39
    iget-object p2, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 41
    iget-object p2, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 p3, 0x0

    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 42
    iget-object p2, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    aget p2, p2, p3

    const v0, 0x8d40

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 43
    iget-object p2, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 46
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p2

    const v1, 0x8ce0

    const/16 v2, 0xde1

    .line 43
    invoke-static {v0, v1, v2, p2, p3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 48
    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 49
    iput-object p1, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V
    .locals 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 16
    iput-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    .line 21
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/RawTexture;->prepare(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    aget v0, v0, v2

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v3, 0xde1

    .line 30
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v4

    .line 27
    invoke-static {v1, v0, v3, v4, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 32
    invoke-static {v1, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 33
    iput-object p2, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 34
    iput-object p1, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Camera delete framebuffer thread=%d id=%d"

    .line 72
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameBuffer"

    .line 71
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteFrameBuffer(I)V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/android/camera/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/RawTexture;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 6

    .line 81
    sget-boolean v0, Lcom/android/camera/Device;->IS_C3G:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_C3B:Z

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/android/camera/effect/FrameBuffer;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "delete framebuffer thread=%d id=%d"

    .line 83
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteFrameBuffer(I)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/camera/effect/FrameBuffer;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/android/camera/effect/FrameBuffer;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/RawTexture;->recycleImmediately()V

    return-void
.end method
