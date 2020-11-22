.class Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;
.super Ljava/lang/Object;
.source "CameraFocusAnimateDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startTouchDownAnimation()V
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

    .line 274
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

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

    .line 294
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$300(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 295
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$302(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 297
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$400(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$700(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$500(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$600(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 277
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    move-result-object p1

    const v0, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const v1, 0x3f70a3d7    # 0.94f

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 278
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/16 v3, 0xcd

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 279
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 280
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigSplitCircle;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 284
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 285
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 286
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method
