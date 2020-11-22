.class Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V9EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V9EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V9EdgeShutterView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V9EdgeShutterView;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V9EdgeShutterView;Lcom/android/camera/ui/V9EdgeShutterView$1;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V9EdgeShutterView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationCancel animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraEdgeShutterView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/ui/V9EdgeShutterView;->access$502(Lcom/android/camera/ui/V9EdgeShutterView;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraEdgeShutterView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$400(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$500(Lcom/android/camera/ui/V9EdgeShutterView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$600(Lcom/android/camera/ui/V9EdgeShutterView;I)V

    .line 296
    iget-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {p1, v0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$502(Lcom/android/camera/ui/V9EdgeShutterView;I)I

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$700(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {p1}, Lcom/android/camera/ui/V9EdgeShutterView;->access$500(Lcom/android/camera/ui/V9EdgeShutterView;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 298
    iget-object p1, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$502(Lcom/android/camera/ui/V9EdgeShutterView;I)I

    .line 300
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V9EdgeShutterView;->access$800(Lcom/android/camera/ui/V9EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/android/camera/ui/V9EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V9EdgeShutterView;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    :cond_0
    return-void
.end method
