.class Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$9;
.super Ljava/lang/Object;
.source "CameraFocusAnimateDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->start3ALockSuccessAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$9;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 544
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 545
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$9;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$9;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->updateValue(F)V

    .line 547
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$9;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
