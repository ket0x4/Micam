.class public Lcom/android/camera/effect/renders/RenderGroup;
.super Lcom/android/camera/effect/renders/Render;
.source "RenderGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mParentFrameBufferIdOld:I

.field private mPartRenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field

.field private mRenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field

.field private mRendersMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/RenderGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    return-void
.end method

.method private initOrientation(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 34
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mJpegOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 35
    iget p0, p0, Lcom/android/camera/effect/renders/Render;->mShootRotation:F

    invoke-virtual {p1, p0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    :cond_0
    return-void
.end method

.method private recordRender(Lcom/android/camera/effect/renders/Render;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 75
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 77
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 80
    :cond_1
    sget-object p0, Lcom/android/camera/effect/renders/RenderGroup;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already added render with id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private setSize(Lcom/android/camera/effect/renders/Render;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 65
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    if-eqz v0, :cond_3

    .line 69
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget p0, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addPartRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->recordRender(Lcom/android/camera/effect/renders/Render;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setSize(Lcom/android/camera/effect/renders/Render;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->initOrientation(Lcom/android/camera/effect/renders/Render;)V

    :cond_0
    return-void
.end method

.method public beginBindFrameBuffer(III)V
    .locals 1

    const v0, 0x8d40

    .line 132
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 134
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->identityAllM()V

    .line 135
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    .line 136
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportHeight:I

    .line 137
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    .line 139
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    return-void
.end method

.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 5

    .line 143
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 150
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    .line 147
    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 153
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->identityAllM()V

    .line 154
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    .line 155
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportHeight:I

    .line 156
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    .line 157
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    .line 158
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    return-void
.end method

.method public clearPartRenders()V
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected clearRenders()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public deleteBuffer()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    .line 207
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Lcom/android/camera/effect/renders/Render;->destroy()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/RenderGroup;->clearRenders()V

    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public endBindFrameBuffer()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 163
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 164
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 165
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    return-void
.end method

.method public getPartRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 1

    if-ltz p1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/renders/Render;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 3

    if-gez p1, :cond_0

    .line 87
    sget-object v0, Lcom/android/camera/effect/renders/RenderGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid render id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/renders/Render;

    return-object p0
.end method

.method public getRenderByIndex(I)Lcom/android/camera/effect/renders/Render;
    .locals 3

    if-ltz p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/renders/Render;

    return-object p0

    .line 94
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/effect/renders/RenderGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid render index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRenderSize()I
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getRenders()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isNeedInit(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    .line 323
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isPartComplete(I)Z
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeRender(I)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRendersMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/Render;->destroy()V

    :cond_0
    return-void
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .locals 1

    .line 182
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 1

    .line 233
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mJpegOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    .line 248
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 218
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 222
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected setParentFrameBufferId(I)V
    .locals 1

    .line 284
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreviousFrameBufferInfo(III)V
    .locals 1

    .line 314
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/effect/renders/Render;->setPreviousFrameBufferInfo(III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setShootRotation(F)V
    .locals 1

    .line 260
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSnapshotSize(II)V
    .locals 1

    .line 272
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSticker(Ljava/lang/String;)V
    .locals 1

    .line 305
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setSticker(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setViewportSize(II)V
    .locals 1

    .line 170
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object p0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
