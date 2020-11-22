.class public Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;
.super Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
.source "ColorLookupFilter4x4.java"


# instance fields
.field private mGLStrengthLocation:I

.field public mLookupSourceTexture:I

.field public mLookupTextureUniform:I

.field private mStrength:F

.field protected mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " precision mediump float;\n varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n uniform lowp float strength;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     mediump float blueColor = textureColor.b * 15.0;\n     \n     mediump vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 4.0);\n     quad1.x = floor(blueColor) - (quad1.y * 4.0);\n     \n     mediump vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 4.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 4.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.r);\n     texPos1.y = (quad1.y * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.r);\n     texPos2.y = (quad2.y * 1.0/4.0) + 0.5/64.0 + ((1.0/4.0 - 1.0/64.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), strength);\n }"

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mStrength:F

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mLookupSourceTexture:I

    .line 59
    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mTable:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDestroy()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 84
    iget v2, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mLookupSourceTexture:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 85
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mLookupSourceTexture:I

    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 1

    .line 90
    iget p0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mLookupSourceTexture:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const p0, 0x84c3

    .line 91
    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p0, 0xde1

    const/4 v0, 0x0

    .line 92
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p0, 0x84c0

    .line 93
    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_0
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 2

    .line 98
    iget v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mLookupSourceTexture:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x84c3

    .line 100
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 102
    iget v1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mLookupSourceTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 104
    iget v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mLookupTextureUniform:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 106
    :cond_0
    iget v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mGLStrengthLocation:I

    iget p0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mStrength:F

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInit()V

    .line 69
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mLookupTextureUniform:I

    .line 70
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;->mGLStrengthLocation:I

    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInitialized()V

    .line 75
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4$1;

    invoke-direct {v0, p0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4$1;-><init>(Lcom/miui/filtersdk/filter/base/ColorLookupFilter4x4;)V

    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
