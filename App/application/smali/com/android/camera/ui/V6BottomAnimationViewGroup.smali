.class public Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6BottomAnimationViewGroup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 136
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 137
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 141
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 142
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 28
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 30
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
