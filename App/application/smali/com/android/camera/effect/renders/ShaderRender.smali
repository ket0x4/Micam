.class public abstract Lcom/android/camera/effect/renders/ShaderRender;
.super Lcom/android/camera/effect/renders/Render;
.source "ShaderRender.java"


# static fields
.field private static final VERTEX:Ljava/lang/String;


# instance fields
.field protected mAttriSupportedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAttributePositionH:I

.field protected mAttributeTexCoorH:I

.field protected mBlendEnabled:Z

.field protected mPreviewEffectRect:[F

.field protected mProgram:I

.field protected mSnapshotEffectRect:[F

.field protected mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field protected mUniformAlphaH:I

.field protected mUniformBlendAlphaH:I

.field protected mUniformMVPMatrixH:I

.field protected mUniformSTMatrixH:I

.field protected mUniformTextureH:I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vertex_normal.txt"

    .line 18
    invoke-static {v0}, Lcom/android/camera/effect/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/ShaderRender;->VERTEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 p1, 0x4

    new-array v0, p1, [F

    .line 33
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    new-array p1, p1, [F

    .line 34
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mSnapshotEffectRect:[F

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initShader()V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initVertexData()V

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initSupportAttriList()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 p1, 0x4

    new-array p2, p1, [F

    .line 33
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    new-array p1, p1, [F

    .line 34
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mSnapshotEffectRect:[F

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initShader()V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initVertexData()V

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initSupportAttriList()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static allocateByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 57
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bindTexture(II)Z
    .locals 0

    .line 78
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p0, 0xde1

    const/4 p2, 0x0

    .line 79
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x1

    return p0
.end method

.method protected bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 68
    :cond_0
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 72
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTarget()I

    move-result p0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 73
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTarget()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public destroy()V
    .locals 3

    .line 108
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete program "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteProgram(I)V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->destroy()V

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public abstract getFragShaderString()Ljava/lang/String;
.end method

.method public getVertexShaderString()Ljava/lang/String;
    .locals 0

    .line 103
    sget-object p0, Lcom/android/camera/effect/renders/ShaderRender;->VERTEX:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract initShader()V
.end method

.method protected abstract initSupportAttriList()V
.end method

.method protected abstract initVertexData()V
.end method

.method public isAttriSupported(I)Z
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected setBlendEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(ZZ)V

    return-void
.end method

.method protected setBlendEnabled(ZZ)V
    .locals 0

    const/16 p0, 0xbe2

    if-eqz p1, :cond_1

    .line 90
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x302

    :goto_0
    const/16 p1, 0x303

    .line 91
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    :goto_1
    return-void
.end method
