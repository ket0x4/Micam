.class public Lcom/miui/filtersdk/filter/NewBeautificationFilter;
.super Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;
.source "NewBeautificationFilter.java"


# instance fields
.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mbGetValidTexureID:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    return-void
.end method

.method static synthetic access$002(Lcom/miui/filtersdk/filter/NewBeautificationFilter;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/filtersdk/filter/NewBeautificationFilter;)Lcom/miui/filtersdk/beauty/BeautyProcessor;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/filtersdk/filter/NewBeautificationFilter;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    return p1
.end method

.method private initBeauty()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    iget v1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    iget p0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->init(II)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->onInit()V

    .line 44
    invoke-direct {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->initBeauty()V

    return-void
.end method

.method public initBeautyProcessor(II)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iput p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    .line 64
    iput p2, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 228
    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    .line 230
    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    invoke-virtual {p0}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->release()V

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDisplaySizeChanged(II)V

    .line 204
    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->onDisplaySizeChanged(II)V

    return-void
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 7

    .line 74
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 75
    iget-boolean p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 79
    :cond_0
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 81
    iget v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 82
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 83
    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    iget v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 86
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 88
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    const/16 p3, 0xde1

    if-eq p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-eqz p2, :cond_1

    const p2, 0x84c0

    .line 89
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 90
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 91
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysPre()V

    const/4 p2, 0x5

    const/4 v0, 0x4

    .line 94
    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 95
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 96
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysAfter()V

    .line 98
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 9

    .line 117
    iget-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 123
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 127
    :cond_1
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    if-eq p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 131
    :cond_2
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameWidth:I

    iget v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, p1, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 132
    iget-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    aget p1, p1, v2

    const v1, 0x8d40

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 133
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 143
    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    iget v3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 145
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 146
    invoke-virtual {p3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget v3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 148
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 150
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    const/16 p2, 0xde1

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-eqz p1, :cond_3

    const p1, 0x84c0

    .line 151
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 152
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 153
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 157
    invoke-static {p1, v2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 163
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 164
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 165
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysAfter()V

    .line 166
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 167
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 169
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mOutputWidth:I

    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mOutputHeight:I

    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 171
    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    aget p0, p0, v2

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method protected onInit()V
    .locals 2

    const-string v0, "attribute vec4 a_position;                         \nattribute vec2 a_texCoord;                         \nvarying vec2 v_texCoord;                           \nvoid main(){                                       \n   gl_Position = a_position;                       \n   v_texCoord = a_texCoord;                        \n}                                                  \n"

    const-string v1, "precision highp float;                             \nvarying vec2 v_texCoord;                           \nuniform sampler2D texture;                         \nvoid main (void){                                  \n   vec3 rgb = texture2D(texture, v_texCoord).rgb;  \n   gl_FragColor = vec4(rgb, 1.0);                  \n}                                                  \n"

    .line 49
    invoke-static {v0, v1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    .line 50
    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string v1, "a_position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    .line 51
    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string v1, "a_texCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    .line 52
    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string v1, "texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    .line 53
    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    iget v1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->initFrameBuffers(II)V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    return-void
.end method

.method public passPreviewFrameToTexture([BII)V
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->hasPendingDrawTasks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/miui/filtersdk/filter/NewBeautificationFilter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/filtersdk/filter/NewBeautificationFilter$1;-><init>(Lcom/miui/filtersdk/filter/NewBeautificationFilter;[BII)V

    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
