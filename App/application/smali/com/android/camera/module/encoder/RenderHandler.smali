.class public final Lcom/android/camera/module/encoder/RenderHandler;
.super Ljava/lang/Object;
.source "RenderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderHandler"


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

.field private mEgl:Lcom/android/camera/module/encoder/EGLBase;

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

.field private mIsReady:Z

.field private mIsRecordable:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRequestDraw:I

.field private mRequestRelease:Z

.field private mRequestSetEglContext:Z

.field private mShardContext:Landroid/opengl/EGLContext;

.field private mSurface:Ljava/lang/Object;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method private constructor <init>(IILcom/android/camera/ActivityBase;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 75
    iput p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewWidth:I

    .line 76
    iput p2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewHeight:I

    .line 77
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final createHandler(Ljava/lang/String;IILcom/android/camera/ActivityBase;)Lcom/android/camera/module/encoder/RenderHandler;
    .locals 6

    .line 57
    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "init: previewSize=%dx%d"

    .line 57
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/module/encoder/RenderHandler;-><init>(IILcom/android/camera/ActivityBase;)V

    .line 60
    iget-object p1, v0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 61
    :try_start_0
    iput-boolean v4, v0, Lcom/android/camera/module/encoder/RenderHandler;->mIsReady:Z

    .line 62
    new-instance p2, Ljava/lang/Thread;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    :cond_0
    invoke-direct {p2, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 63
    iget-boolean p0, v0, Lcom/android/camera/module/encoder/RenderHandler;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 65
    :try_start_1
    iget-object p0, v0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    :try_start_2
    sget-object p2, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_1
    :goto_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private final internalPrepare()V
    .locals 4

    .line 209
    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "internalPrepare"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lcom/android/camera/module/encoder/RenderHandler;->internalRelease()V

    .line 211
    new-instance v0, Lcom/android/camera/module/encoder/EGLBase;

    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mShardContext:Landroid/opengl/EGLContext;

    iget-boolean v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mIsRecordable:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/module/encoder/EGLBase;-><init>(Landroid/opengl/EGLContext;ZZ)V

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    .line 212
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSurface:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/encoder/EGLBase;->createFromSurface(Ljava/lang/Object;)Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    .line 213
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->makeCurrent()V

    .line 214
    new-instance v0, Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-direct {v0}, Lcom/android/camera/effect/VideoRecorderCanvas;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    .line 215
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    iget v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/VideoRecorderCanvas;->setSize(II)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSurface:Ljava/lang/Object;

    .line 217
    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private final internalRelease()V
    .locals 2

    .line 221
    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "internalRelease"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->release()V

    .line 224
    iput-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {v0}, Lcom/android/camera/effect/VideoRecorderCanvas;->deleteProgram()V

    .line 228
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 229
    iput-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase;->release()V

    .line 233
    iput-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    :cond_2
    return-void
.end method


# virtual methods
.method public final draw(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    .line 108
    monitor-exit v0

    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/module/encoder/RenderHandler;->mPreviewHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 111
    iget p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    .line 112
    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final release()V
    .locals 2

    .line 128
    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    .line 131
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    .line 134
    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    :try_start_2
    sget-object v1, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 5

    .line 151
    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "renderHandlerThread>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 153
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    .line 155
    iput v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    const/4 v2, 0x1

    .line 156
    iput-boolean v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mIsReady:Z

    .line 157
    iget-object v3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 161
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 162
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v0, :cond_1

    .line 163
    monitor-exit v3

    goto :goto_2

    .line 165
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestSetEglContext:Z

    if-eqz v0, :cond_2

    .line 166
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 167
    invoke-direct {p0}, Lcom/android/camera/module/encoder/RenderHandler;->internalPrepare()V

    .line 169
    :cond_2
    iget v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 171
    iget v4, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestDraw:I

    .line 174
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mEgl:Lcom/android/camera/module/encoder/EGLBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    invoke-virtual {v3}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->makeCurrent()V

    .line 182
    monitor-enter v0

    .line 183
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    iget-object v4, p0, Lcom/android/camera/module/encoder/RenderHandler;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 184
    iget-object v3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mCanvas:Lcom/android/camera/effect/VideoRecorderCanvas;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->flush()V

    .line 185
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mInputSurface:Lcom/android/camera/module/encoder/EGLBase$EglSurface;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/EGLBase$EglSurface;->swap()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 185
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_4
    iget-object v3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    :try_start_5
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 195
    :catch_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 200
    :goto_2
    iget-object v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_6
    iput-boolean v2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    .line 202
    invoke-direct {p0}, Lcom/android/camera/module/encoder/RenderHandler;->internalRelease()V

    .line 203
    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 205
    sget-object p0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v0, "renderHandlerThread<<<"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception p0

    .line 204
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    .line 197
    :goto_3
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :catchall_3
    move-exception p0

    .line 174
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 158
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p0
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Ljava/lang/Object;Z)V
    .locals 2

    .line 83
    sget-object v0, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const-string v1, "setEglContext"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    instance-of v0, p2, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    instance-of v0, p2, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unsupported window type:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_2

    .line 90
    monitor-exit v0

    return-void

    .line 92
    :cond_2
    iput-object p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mShardContext:Landroid/opengl/EGLContext;

    .line 93
    iput-object p2, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSurface:Ljava/lang/Object;

    .line 94
    iput-boolean p3, p0, Lcom/android/camera/module/encoder/RenderHandler;->mIsRecordable:Z

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 96
    iget-object p1, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    iget-object p0, p0, Lcom/android/camera/module/encoder/RenderHandler;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 100
    :try_start_2
    sget-object p1, Lcom/android/camera/module/encoder/RenderHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
