.class public Lcom/android/camera/ui/BottomControlUpperPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "BottomControlUpperPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field public mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

.field public mEffectButton:Lcom/android/camera/ui/EffectButton;

.field public mModeButton:Lcom/android/camera/ui/ModeButton;

.field public mSkinBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 169
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 170
    iput-object v1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 174
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 175
    iput-object v1, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

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

    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900fc

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraPicker;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    const v0, 0x7f0900d7

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautyButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mSkinBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    const v0, 0x7f090089

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mModeButton:Lcom/android/camera/ui/ModeButton;

    const v0, 0x7f090043

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mEffectButton:Lcom/android/camera/ui/EffectButton;

    const v0, 0x7f090118

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    .line 41
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
