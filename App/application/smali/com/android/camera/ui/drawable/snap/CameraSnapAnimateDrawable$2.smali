.class Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;
.super Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;
.source "CameraSnapAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-direct {p0}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;->getInterpolation(F)F

    move-result p1

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 155
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method
