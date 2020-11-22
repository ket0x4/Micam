.class public Lcom/android/camera/effect/renders/YBlurEffectRender;
.super Lcom/android/camera/effect/renders/RegionEffectRender;
.source "YBlurEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method


# virtual methods
.method protected drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFFZ)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->setStep(II)V

    .line 18
    invoke-super/range {p0 .. p6}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFFZ)V

    return-void
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 0

    const-string p0, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nvoid main() { \n    vec2 step = vec2(0.0, uStep.y) ; \n    vec2 delta = step; \n    int radius = 10; \n    float factor = 1.0 / (float(radius + 1) * float(radius + 1)); \n    float weight = factor * float(radius + 1); \n    vec3 sum = texture2D(sTexture, vTexCoord).rgb * weight; \n    for (int i = 1; i <= radius; ++i) { \n        weight -= factor; \n        sum += (texture2D(sTexture, vTexCoord + delta).rgb + texture2D(sTexture, vTexCoord - delta).rgb) * weight; \n        delta += step; \n    } \n    gl_FragColor = vec4(sum, 1.0)*uAlpha; \n}"

    return-object p0
.end method
