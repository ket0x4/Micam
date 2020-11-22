.class Lcom/android/camera/ui/FaceView$2;
.super Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$2;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 335
    invoke-super {p0, p1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;->getInterpolation(F)F

    move-result p1

    .line 336
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$2;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p0}, Lcom/android/camera/ui/FaceView;->access$100(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return p1
.end method
