.class public Lcom/android/camera/ui/StereoButton;
.super Landroid/widget/ImageView;
.source "StereoButton.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StereoButton$AnimationType;,
        Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

.field private mExitButton:Lcom/android/camera/ui/ExitButton;

.field private mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mIsShowing:Z

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mModeExitButtonCenterX:I

.field private mModeExitButtonHalfWidth:I

.field private mModeExitButtonPadding:I

.field private mPopup:Lcom/android/camera/ui/StereoPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mRotateImageAnim:Landroid/view/animation/Animation;

.field private mSlideDownAnim:Landroid/view/animation/Animation;

.field private mSlideUpAnim:Landroid/view/animation/Animation;

.field private mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    const p2, 0x7f010011

    .line 44
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    .line 45
    iget-object p2, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p2, 0x7f010018

    .line 47
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    .line 48
    iget-object p2, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p2, 0x7f010017

    .line 50
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    .line 51
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    iput-object p1, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/StereoButton;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/StereoButton;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/ExitButton;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/StereoButton;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/ui/StereoButton;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    return p1
.end method

.method private animateShow()V
    .locals 2

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 105
    invoke-virtual {p0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    return-void
.end method

.method private createExpandAnimator(Z)V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/StereoButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->updateParameters()V

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 417
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 419
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget v2, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonHalfWidth:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    if-eqz p1, :cond_2

    .line 425
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->EXPAND:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    .line 426
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 428
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mAnimatorListener:Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;

    sget-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/StereoButton$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/StereoButton$AnimationType;)V

    .line 429
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 431
    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    return-void
.end method

.method private doWithPopup(ZZ)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initializePopup()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    :cond_1
    return-void

    .line 128
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need to initialize popup, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StereoButton"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reloadPreference()V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz p0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method private updateActivated()V
    .locals 1

    .line 214
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    :goto_0
    return-void
.end method

.method private updateExitButton(Z)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitContent(I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 256
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 261
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public dismissPopup(Z)Z
    .locals 2

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->dismiss(Z)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->dismissScale(Z)V

    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public dismissScale(Z)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 385
    new-instance p1, Lcom/android/camera/ui/StereoButton$2;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/StereoButton$2;-><init>(Lcom/android/camera/ui/StereoButton;)V

    .line 391
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x0

    .line 395
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    :goto_0
    return-void
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/16 p2, 0xb

    if-eq p1, p2, :cond_3

    const/16 p2, 0xc

    if-eq p1, p2, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const v2, 0x7f0900db

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 323
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->reloadPreference()V

    goto :goto_0

    .line 303
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result p1

    if-nez p1, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    .line 306
    :cond_2
    new-instance p1, Lcom/android/camera/ui/StereoButton$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/StereoButton$1;-><init>(Lcom/android/camera/ui/StereoButton;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 319
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPopupVisible()Z
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mSlideUpAnim:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/ui/StereoButton;->mIsShowing:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 359
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->showScale(Z)V

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

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-ne p1, p0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/ui/StereoButton;->setStereoValue(ZZZ)V

    :goto_0
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 0

    const/4 p1, 0x0

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    move-result p1

    .line 334
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->updateActivated()V

    return p1
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public setActivated(Z)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    if-nez p1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_0
    return-void
.end method

.method public setDeltaX(I)V
    .locals 3

    .line 435
    iget v0, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonCenterX:I

    iget v1, p0, Lcom/android/camera/ui/StereoButton;->mModeExitButtonPadding:I

    sub-int v2, v0, v1

    sub-int/2addr v2, p1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 437
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/ui/ExitButton;->setExpandingSize(II)V

    .line 439
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 292
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 293
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StereoPopup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setStereoValue(ZZZ)V
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0338

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->animateShow()V

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->showPopup(Z)V

    goto :goto_1

    .line 87
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/StereoButton;->mRotateImageAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 88
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 89
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    .line 91
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/camera/ui/StereoButton;->updateExitButton(Z)V

    if-eqz p2, :cond_4

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const v2, 0x7f0900db

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 94
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public showPopup(Z)V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/android/camera/ui/StereoButton;->initializePopup()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mPopup:Lcom/android/camera/ui/StereoPopup;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/StereoPopup;->show(Z)V

    const/4 v0, 0x1

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/StereoButton;->doWithPopup(ZZ)V

    :cond_0
    return-void
.end method

.method public showScale(Z)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->isExitButtonShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 375
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StereoButton;->createExpandAnimator(Z)V

    .line 377
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    return-void
.end method

.method public updateVisible()V
    .locals 2

    .line 224
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNoCameraModeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    .line 230
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/StereoButton;->setActivated(Z)V

    const/16 v0, 0x8

    .line 235
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
