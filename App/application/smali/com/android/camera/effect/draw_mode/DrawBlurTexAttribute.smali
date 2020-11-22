.class public Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
.source "DrawBlurTexAttribute.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    const/16 p1, 0xa

    .line 8
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 0

    .line 5
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    return-object p0
.end method

.method public bridge synthetic init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 0

    .line 5
    invoke-virtual/range {p0 .. p6}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;
    .locals 0

    .line 25
    invoke-super/range {p0 .. p5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const/16 p1, 0xa

    .line 26
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;
    .locals 0

    .line 32
    invoke-super/range {p0 .. p6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const/16 p1, 0xa

    .line 33
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-object p0
.end method
