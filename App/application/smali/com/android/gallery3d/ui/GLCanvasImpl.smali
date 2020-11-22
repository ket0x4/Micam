.class public Lcom/android/gallery3d/ui/GLCanvasImpl;
.super Lcom/android/gallery3d/ui/BaseGLCanvas;
.source "GLCanvasImpl.java"


# instance fields
.field private mEffectRenderGroup:Lcom/android/camera/effect/renders/EffectRenderGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;-><init>()V

    .line 42
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    .line 43
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 45
    new-instance v0, Lcom/android/camera/effect/renders/EffectRenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 46
    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenderGroup:Lcom/android/camera/effect/renders/EffectRenderGroup;

    .line 47
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->addChangeListener(Lcom/android/camera/effect/EffectController$EffectChangedListener;)V

    .line 49
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->initialize()V

    return-void
.end method


# virtual methods
.method public deleteProgram()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->deleteProgram()V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    .line 113
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->destroy()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return-void
.end method

.method public getEffectRender()Lcom/android/camera/effect/renders/EffectRenderGroup;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenderGroup:Lcom/android/camera/effect/renders/EffectRenderGroup;

    return-object p0
.end method

.method protected initialize()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->initialize()V

    const/16 p0, 0xbd0

    .line 57
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 58
    invoke-static {p0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    return-void
.end method

.method public prepareBlurRenders()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->prepareEffectRenders(ZI)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_BLUR:I

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    return-void
.end method

.method public prepareEffectRenders(ZI)V
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " modelMatrix="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->getModelMatrix()[F

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->dumpMatrix([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GLCanvasImpl"

    .line 64
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSticker(Ljava/lang/String;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setSticker(Ljava/lang/String;)V

    return-void
.end method
