.class Lcom/android/camera/fragment/FragmentBottomAction$5;
.super Ljava/lang/Object;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomAction;

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->val$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 934
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 938
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1200(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->val$start:Z

    if-nez p1, :cond_5

    .line 939
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$300(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 940
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$500(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->val$start:Z

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 942
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 943
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$200(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->val$start:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 947
    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->val$start:Z

    if-eqz p1, :cond_7

    .line 948
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1100(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 949
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$900(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 950
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1000(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 952
    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1300(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 922
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->val$start:Z

    if-nez p1, :cond_1

    .line 923
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$900(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 924
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1000(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 926
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1300(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 927
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$5;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1100(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method
