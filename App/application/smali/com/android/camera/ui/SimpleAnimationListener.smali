.class public Lcom/android/camera/ui/SimpleAnimationListener;
.super Ljava/lang/Object;
.source "SimpleAnimationListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mShowAnimation:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    .line 13
    iput-boolean p2, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 33
    iget-boolean p1, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 26
    iget-boolean p1, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mShowAnimation:Z

    if-eqz p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/camera/ui/SimpleAnimationListener;->mView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
