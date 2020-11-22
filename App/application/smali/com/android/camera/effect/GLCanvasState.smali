.class public Lcom/android/camera/effect/GLCanvasState;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mBlendAlpha:F

.field private mCanvasStateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdentityMatrix:[F

.field private mMVPMatrix:[F

.field private mModelMatrix:[F

.field private mProjectionMatrix:[F

.field private mTexMatrix:[F

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 11
    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    new-array v1, v0, [F

    .line 12
    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    new-array v1, v0, [F

    .line 13
    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    new-array v1, v0, [F

    .line 14
    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    new-array v1, v0, [F

    .line 15
    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    iput v1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 17
    iput v1, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    new-array v0, v0, [F

    .line 26
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mIdentityMatrix:[F

    .line 20
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 23
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    return p0
.end method

.method public getBlendAlpha()F
    .locals 0

    .line 167
    iget p0, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    return p0
.end method

.method public getFinalMatrix()[F
    .locals 12

    .line 197
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    iget-object v4, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 198
    iget-object v10, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    iget-object v8, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v10

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 199
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    return-object p0
.end method

.method public getModelMatrix()[F
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    return-object p0
.end method

.method public getTexMatrix()[F
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    return-object p0
.end method

.method public identityAllM()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 73
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public identityTexM()V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public ortho(FFFF)V
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public popState()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getModelMatrix()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    .line 101
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getTexMatrix()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    .line 102
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    .line 103
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getBlendAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    return-void

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public pushState()V
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    new-instance v7, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;

    iget-object v3, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    iget-object v4, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    iget v5, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    iget v6, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;-><init>(Lcom/android/camera/effect/GLCanvasState;[F[FFF)V

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rotate(FFFF)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 163
    iput p1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    return-void
.end method

.method public setTexMatrix(FFFF)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 177
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    sub-float/2addr p3, p1

    aput p3, p0, v1

    sub-float/2addr p4, p2

    const/4 p3, 0x5

    .line 178
    aput p4, p0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/16 p4, 0xa

    .line 179
    aput p3, p0, p4

    const/16 p4, 0xc

    .line 180
    aput p1, p0, p4

    const/16 p1, 0xd

    .line 181
    aput p2, p0, p1

    const/16 p1, 0xf

    .line 182
    aput p3, p0, p1

    return-void
.end method

.method public translate(FF)V
    .locals 2

    .line 111
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public translate(FFF)V
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
