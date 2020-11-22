.class Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusAnimateDrawable.java"


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

    .line 594
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$500(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 601
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$900(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->getEvValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$900(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(Z)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$13;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 605
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
