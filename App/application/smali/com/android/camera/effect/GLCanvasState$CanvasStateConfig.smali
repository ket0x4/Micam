.class Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/GLCanvasState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanvasStateConfig"
.end annotation


# instance fields
.field mAlpha:F

.field mBlendAlpha:F

.field mModelMatrix:[F

.field mTexMatrix:[F

.field final synthetic this$0:Lcom/android/camera/effect/GLCanvasState;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/GLCanvasState;[F[FFF)V
    .locals 4

    .line 39
    iput-object p1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->this$0:Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 34
    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    new-array v0, p1, [F

    .line 35
    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    iput v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    iput v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 41
    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    aget v3, p2, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p1, :cond_1

    .line 45
    iget-object p2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    aget v1, p3, v0

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    iput p4, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    .line 49
    iput p5, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    return p0
.end method

.method public getBlendAlpha()F
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return p0
.end method

.method public getModelMatrix()[F
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    return-object p0
.end method

.method public getTexMatrix()[F
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    return-object p0
.end method
