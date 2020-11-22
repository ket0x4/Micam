.class Lcom/android/camera/fragment/FragmentBottomAction$4;
.super Landroid/view/animation/DecelerateInterpolator;
.source "FragmentBottomAction.java"


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

    .line 895
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 898
    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    .line 899
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$800(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    sub-float v1, v2, p1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 900
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$900(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1000(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz v1, :cond_1

    sub-float v1, v2, p1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1100(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz v1, :cond_3

    sub-float v1, v2, p1

    goto :goto_2

    :cond_3
    move v1, p1

    :goto_2
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 906
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1200(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-nez v0, :cond_8

    .line 907
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$300(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 908
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$500(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz v1, :cond_5

    move v1, p1

    goto :goto_3

    :cond_5
    sub-float v1, v2, p1

    :goto_3
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 911
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 912
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$200(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz p0, :cond_7

    move p0, p1

    goto :goto_4

    :cond_7
    sub-float p0, v2, p1

    :goto_4
    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_8
    return p1
.end method
