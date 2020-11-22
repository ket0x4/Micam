.class Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;
.super Ljava/lang/Object;
.source "CameraFocusAnimateDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusingAnimation()V
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

    .line 344
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 352
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    iget p1, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 354
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$800(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 356
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$400(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    goto :goto_0

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$500(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$600(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
