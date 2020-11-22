.class public final Lcom/android/camera/effect/renders/PipeRenderPair;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "PipeRenderPair.java"


# instance fields
.field private mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

.field private mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mBufferHeight:I

.field private mBufferWidth:I

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mFirstRender:Lcom/android/camera/effect/renders/Render;

.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mFrameBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mSecondRender:Lcom/android/camera/effect/renders/Render;

.field private mTextureFilled:Z

.field private mUseMiddleBuffer:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 21
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 22
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 27
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 29
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 21
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 22
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    const/4 p2, -0x1

    .line 26
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 27
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 29
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 50
    invoke-virtual {p0, p3, p4}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    .line 51
    iput-boolean p5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 21
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 22
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 27
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 29
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    .line 45
    iput-boolean p4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method

.method private getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;
    .locals 9

    .line 280
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 282
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v1

    .line 283
    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v2}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v2

    if-ge p1, p2, :cond_0

    int-to-double v3, v2

    int-to-double v5, v1

    div-double/2addr v3, v5

    int-to-double v5, p2

    int-to-double v7, p1

    div-double/2addr v5, v7

    sub-double/2addr v3, v5

    .line 284
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    goto :goto_1

    :cond_0
    int-to-double v3, v1

    int-to-double v5, v2

    div-double/2addr v3, v5

    int-to-double v5, p1

    int-to-double v7, p2

    div-double/2addr v5, v7

    sub-double/2addr v3, v5

    .line 285
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    :goto_1
    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_2

    .line 289
    :cond_1
    invoke-static {v1}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v1

    invoke-static {p1}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 290
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v1

    invoke-static {p2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/FrameBuffer;

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    .line 298
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 302
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_4

    .line 303
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 305
    :cond_4
    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V
    .locals 1

    .line 148
    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result p2

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/camera/effect/renders/Render;->setPreviousFrameBufferInfo(III)V

    return-void
.end method

.method private updateMiddleBuffer(II)V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_0

    .line 317
    div-int/lit8 p1, p1, 0xc

    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 318
    div-int/lit8 p2, p2, 0xc

    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    goto :goto_0

    .line 320
    :cond_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 321
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 107
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "At most 2 renders are supported in PipeRenderPair!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 7

    .line 111
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 115
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    if-eq v0, v1, :cond_3

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->release()V

    .line 119
    :cond_2
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    iget v4, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 123
    iget-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :goto_0
    invoke-virtual {v2}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v2

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    .line 122
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public deleteBuffer()V
    .locals 2

    .line 265
    invoke-super {p0}, Lcom/android/camera/effect/renders/RenderGroup;->deleteBuffer()V

    .line 267
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/FrameBuffer;

    .line 268
    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->release()V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 272
    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 10

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne v0, v3, :cond_1

    goto/16 :goto_3

    .line 161
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    .line 162
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 166
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 167
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 170
    invoke-virtual {v3}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v8

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 171
    invoke-virtual {v3}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v9

    move-object v3, v1

    .line 168
    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 175
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    .line 177
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_2

    .line 178
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    .line 179
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 180
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v9, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    move-object v3, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 186
    :cond_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isMainFrameDisplay()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    invoke-static {}, Lcom/android/camera/Device;->isHoldBlurBackground()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    goto :goto_1

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 192
    iget-boolean v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object p0

    move-object v4, p0

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v7, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v8, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    .line 191
    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    :cond_5
    :goto_1
    return v2

    .line 201
    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v3, 0x5

    const/16 v4, 0xa

    if-eq v0, v3, :cond_9

    .line 202
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    if-ne v0, v4, :cond_7

    goto :goto_2

    .line 227
    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_8

    .line 228
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 231
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 232
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v8, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    iget-boolean v9, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 241
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    iget v7, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v8, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    iget-boolean v9, p1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return v2

    :cond_8
    return v1

    .line 203
    :cond_9
    :goto_2
    move-object v0, p1

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 206
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result p1

    if-ne p1, v4, :cond_a

    .line 207
    iget p1, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iget v1, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    .line 209
    :cond_a
    iget p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 210
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 211
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 214
    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v7

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 215
    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v8

    .line 211
    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 218
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFrameBufferInfo(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/FrameBuffer;)V

    .line 220
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTextureAttr:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    iget v6, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iget v8, v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    return v2

    .line 158
    :cond_b
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result p0

    return p0
.end method

.method public drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 8

    .line 133
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v2

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v6, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {v0, v7}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 140
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->release()V

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_0
    return-void
.end method

.method public prepareCopyBlurTexture()V
    .locals 1

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    return-void
.end method

.method public setFirstRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    .line 86
    iget-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 75
    iget-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    div-int/lit8 p1, p1, 0xc

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    :goto_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 76
    iget-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    div-int/lit8 p1, p1, 0xc

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    :goto_1
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    return-void
.end method

.method public setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne p2, v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 68
    :cond_2
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    .line 69
    iput-object p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    return-void
.end method

.method public setSecondRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    .line 93
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    return-void
.end method

.method public setUsedMiddleBuffer(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    return-void
.end method
