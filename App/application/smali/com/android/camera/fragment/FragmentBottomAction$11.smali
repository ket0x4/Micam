.class Lcom/android/camera/fragment/FragmentBottomAction$11;
.super Ljava/lang/Object;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomAction;->setProgressBarVisible(I)V
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

    .line 1683
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$11;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1686
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 1687
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomAction$11;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->access$1800(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    return-void
.end method
