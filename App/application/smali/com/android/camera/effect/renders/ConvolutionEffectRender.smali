.class public abstract Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "ConvolutionEffectRender.java"


# instance fields
.field protected mStepX:F

.field protected mStepY:F

.field protected mUniformStepH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method


# virtual methods
.method protected initShader()V
    .locals 2

    .line 21
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    .line 22
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mUniformStepH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 39
    iget p1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mUniformStepH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    iget p0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    invoke-static {p1, v0, p0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 28
    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    iget p2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->setStep(II)V

    return-void
.end method

.method public setStep(II)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 32
    iput p1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    int-to-float p1, p2

    div-float/2addr v0, p1

    .line 33
    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    return-void
.end method
