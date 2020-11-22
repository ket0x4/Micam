.class Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenViewOvershootInterpolator"
.end annotation


# instance fields
.field private mTension:F

.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ScreenView;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {p1}, Lcom/android/camera/ui/ScreenView;->access$200(Lcom/android/camera/ui/ScreenView;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return-void
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput v0, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    .line 299
    iget p0, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    add-float v2, p0, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public setDistance(II)V
    .locals 0

    if-lez p1, :cond_0

    .line 289
    iget-object p2, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-static {p2}, Lcom/android/camera/ui/ScreenView;->access$200(Lcom/android/camera/ui/ScreenView;)F

    move-result p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-static {p1}, Lcom/android/camera/ui/ScreenView;->access$200(Lcom/android/camera/ui/ScreenView;)F

    move-result p2

    :goto_0
    iput p2, p0, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return-void
.end method
