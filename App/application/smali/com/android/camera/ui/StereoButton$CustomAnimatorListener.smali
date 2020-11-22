.class Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StereoButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/StereoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

.field final synthetic this$0:Lcom/android/camera/ui/StereoButton;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/StereoButton;)V
    .locals 1

    .line 448
    sget-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/StereoButton;Lcom/android/camera/ui/StereoButton$AnimationType;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/StereoButton;Lcom/android/camera/ui/StereoButton$AnimationType;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 452
    iput-object p2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    .line 453
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->updateParameters()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 462
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {p1}, Lcom/android/camera/ui/StereoButton;->access$300(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    .line 463
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    if-ne p1, v1, :cond_0

    .line 464
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {p0}, Lcom/android/camera/ui/StereoButton;->access$200(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {p0, v0}, Lcom/android/camera/ui/StereoButton;->access$402(Lcom/android/camera/ui/StereoButton;Z)Z

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->mAnimationType:Lcom/android/camera/ui/StereoButton$AnimationType;

    return-void
.end method

.method public updateParameters()V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0}, Lcom/android/camera/ui/StereoButton;->access$300(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ExitButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v1}, Lcom/android/camera/ui/StereoButton;->access$300(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v2}, Lcom/android/camera/ui/StereoButton;->access$300(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    .line 478
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/ui/StereoButton;->access$502(Lcom/android/camera/ui/StereoButton;I)I

    .line 479
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lcom/android/camera/ui/StereoButton;->access$602(Lcom/android/camera/ui/StereoButton;I)I

    .line 480
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {p0}, Lcom/android/camera/ui/StereoButton;->access$300(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/ui/StereoButton;->access$702(Lcom/android/camera/ui/StereoButton;I)I

    return-void
.end method
