.class public Lcom/android/gallery3d/ui/BaseGLCanvas;
.super Ljava/lang/Object;
.source "BaseGLCanvas.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLCanvas;


# static fields
.field public static sMaxTextureSize:I = 0x1000


# instance fields
.field private final mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

.field private final mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

.field private final mDeletePrograms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

.field private mHeight:I

.field protected mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

.field protected mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

.field protected mState:Lcom/android/camera/effect/GLCanvasState;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {v0}, Lcom/android/camera/effect/GLCanvasState;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    .line 22
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 23
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 24
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0xd33

    .line 32
    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 33
    aget p0, p0, v0

    sput p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->sMaxTextureSize:I

    return-void
.end method


# virtual methods
.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    return-void
.end method

.method public clearBuffer()V
    .locals 0

    const/4 p0, 0x0

    .line 77
    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p0, 0x4000

    .line 78
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public deleteFrameBuffer(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteProgram()V
    .locals 0

    return-void
.end method

.method public deleteProgram(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 90
    monitor-exit v0

    return p0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    const/4 p0, 0x1

    .line 93
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return-void
.end method

.method public endBindFrameBuffer()V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    return-void
.end method

.method public flush()V
    .locals 0

    .line 193
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method public getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mHeight:I

    return p0
.end method

.method public getState()Lcom/android/camera/effect/GLCanvasState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mWidth:I

    return p0
.end method

.method protected initialize()V
    .locals 1

    const/4 p0, 0x0

    .line 37
    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 p0, 0x0

    .line 38
    invoke-static {p0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 p0, 0xbe2

    .line 39
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p0, 0x302

    const/16 v0, 0x303

    .line 40
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p0, 0x1

    const/16 v0, 0xcf5

    .line 41
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v0, 0xd05

    .line 42
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    return-void
.end method

.method public prepareBlurRenders()V
    .locals 0

    return-void
.end method

.method public prepareEffectRenders(ZI)V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v5, 0x1

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    :cond_0
    return-void
.end method

.method public recycledResources()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 133
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 135
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 139
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 140
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 141
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 145
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 146
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 147
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 149
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    monitor-enter v1

    .line 152
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    .line 155
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 149
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    return-void
.end method

.method public setSize(II)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 58
    iput p1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mWidth:I

    .line 59
    iput p2, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mHeight:I

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 63
    iget-object p1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->identityAllM()V

    .line 64
    iget-object p1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 66
    iget-object p1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 67
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    return-void
.end method
