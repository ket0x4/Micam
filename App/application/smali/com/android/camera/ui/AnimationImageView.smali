.class public Lcom/android/camera/ui/AnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "AnimationImageView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/AnimateView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;
    }
.end annotation


# instance fields
.field private mIsEnable:Z

.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/AnimationImageView;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/android/camera/ui/AnimationImageView;->mIsEnable:Z

    return p0
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public hide(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public show(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 p1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
