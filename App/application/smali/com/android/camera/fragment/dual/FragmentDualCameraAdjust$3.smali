.class Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;
.super Ljava/lang/Object;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 166
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$300(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;IZ)V

    return-void
.end method
