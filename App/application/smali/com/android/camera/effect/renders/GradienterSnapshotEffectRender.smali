.class public Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "GradienterSnapshotEffectRender.java"


# instance fields
.field private mUniformAngle:I

.field private mUniformTargetSize:I

.field private mUniformTexSize:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method private getRotation()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mShootRotation:F

    iget p0, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x43340000    # 180.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/high16 p0, 0x43b40000    # 360.0f

    sub-float/2addr v0, p0

    :cond_0
    return v0
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 0

    const-string p0, "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D sTexture; \nuniform float sAngle; \nuniform vec2 vTexSize; \nuniform vec2 vTargetSize; \nvoid main() \n{ \n  float pf = min(vTargetSize.s,vTargetSize.t) / max(vTargetSize.s,vTargetSize.t);\n  float mOrigin = atan(pf); \n  float rorate_angle = sAngle; \n  float fangle = radians(abs(rorate_angle)) + mOrigin;\n  float s = sin(mOrigin) / sin(fangle);\n  float center_x = 0.5 * vTexSize.s; \n  float center_y = 0.5 * vTexSize.t; \n  float tx = center_x - 0.5 * vTexSize.s * s; \n  float ty = center_y - 0.5 * vTexSize.t * s; \n  float cosangle = cos(radians(rorate_angle)); \n  float sinangle = sin(radians(rorate_angle)); \n  float x = s * (vTexCoord.s * vTexSize.s) + tx; \n  float y = s * (vTexCoord.t * vTexSize.t) + ty; \n  float  x1 = x - center_x; \n  float  y1 = y - center_y; \n  x = cosangle * x1 + sinangle * y1 + center_x; \n  y = -1.0 * sinangle * x1 + cosangle * y1 + center_y; \n  x = x / vTexSize.s; \n  y = y / vTexSize.t; \n  x = clamp(x,0.0,1.0); \n  y = clamp(y,0.0,1.0); \n  gl_FragColor = texture2D(sTexture, vec2(x,y)); \n} \n"

    return-object p0
.end method

.method protected initShader()V
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    .line 23
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "sAngle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformAngle:I

    .line 24
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "vTexSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformTexSize:I

    .line 25
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "vTargetSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformTargetSize:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 31
    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginWidth:I

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginHeight:I

    if-eqz v0, :cond_1

    .line 32
    iget v1, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformTexSize:I

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-static {v1, p1, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 33
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    iget p1, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginWidth:I

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 35
    iget v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformTargetSize:I

    int-to-float p1, p1

    invoke-static {v0, p1, p1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto :goto_0

    .line 37
    :cond_0
    iget p1, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformTargetSize:I

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginHeight:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 39
    :goto_0
    iget p1, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformAngle:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->getRotation()F

    move-result p0

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_1
    return-void
.end method
