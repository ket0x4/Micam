.class Lcom/android/camera/ui/V6EffectCropView$2;
.super Landroid/os/Handler;
.source "V6EffectCropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6EffectCropView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EffectCropView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    .line 680
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 692
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->access$200(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 693
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->access$000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    .line 694
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectCropView;->access$200(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    .line 695
    invoke-static {v2}, Lcom/android/camera/ui/V6EffectCropView;->access$200(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 693
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0

    .line 697
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->access$000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 699
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->access$100(Lcom/android/camera/ui/V6EffectCropView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 700
    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p0}, Lcom/android/camera/ui/V6EffectCropView;->access$000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 682
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->access$000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 683
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->access$100(Lcom/android/camera/ui/V6EffectCropView;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 684
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1, v0}, Lcom/android/camera/ui/V6EffectCropView;->access$102(Lcom/android/camera/ui/V6EffectCropView;Z)Z

    .line 687
    iget-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p1}, Lcom/android/camera/ui/V6EffectCropView;->access$200(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 688
    iget-object p0, p0, Lcom/android/camera/ui/V6EffectCropView$2;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-static {p0}, Lcom/android/camera/ui/V6EffectCropView;->access$200(Lcom/android/camera/ui/V6EffectCropView;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method
