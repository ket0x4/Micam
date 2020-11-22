.class public Lcom/android/camera/effect/renders/BeautificationWrapperRender;
.super Lcom/android/camera/effect/renders/WrapperRender;
.source "BeautificationWrapperRender.java"


# instance fields
.field private mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/renders/WrapperRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/miui/filtersdk/filter/base/GPUImageFilter;)V

    .line 23
    new-instance p2, Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-direct {p2, p1}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object p2, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    .line 24
    invoke-virtual {p0, p4}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->adjustSize(Z)V

    return-void
.end method

.method private drawToFrameBuffer(IFFFF)V
    .locals 8

    .line 70
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    if-eqz v0, :cond_0

    const v1, 0x8d40

    .line 71
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x0

    .line 72
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(IFFFFZ)V

    return-void
.end method


# virtual methods
.method public adjustSize(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x5a

    .line 29
    iget-object v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p1, v0, v0, v1, p0}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->adjustSize(IZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    const/4 v1, 0x1

    .line 31
    iget-object v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/miui/filtersdk/utils/TextureRotationUtil;->adjustSize(IZZLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :goto_0
    return-void
.end method

.method protected drawTexture(IFFFF)V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iget-object v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/16 p1, 0xb44

    .line 63
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 66
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->drawToFrameBuffer(IFFFF)V

    return-void
.end method

.method protected drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/camera/effect/renders/ShaderRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    :cond_0
    move v2, v0

    const/16 p1, 0xb44

    .line 49
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->drawToFrameBuffer(IFFFF)V

    return-void
.end method

.method public setBuffer([BII)V
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    instance-of v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->passPreviewFrameToTexture([BII)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 85
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 87
    iget-object p0, p0, Lcom/android/camera/effect/renders/WrapperRender;->mFilter:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    invoke-virtual {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDisplaySizeChanged(II)V

    return-void
.end method

.method public setViewportSize(II)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/WrapperRender;->setViewportSize(II)V

    .line 80
    iget-object p0, p0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->mSimpleRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    return-void
.end method
