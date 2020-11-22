.class Lcom/android/camera/fragment/FragmentBottomAction$2;
.super Ljava/lang/Object;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomAction;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomAction;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$2;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .line 322
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$2;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$700(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 316
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$2;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$700(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$2;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$700(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 310
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$2;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$600(Lcom/android/camera/fragment/FragmentBottomAction;)Lcom/android/camera/ui/ModeSelectView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$2;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$700(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x12c

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/animation/AnimationMonitor;->animationStart(Ljava/lang/Object;I)V

    return-void
.end method
