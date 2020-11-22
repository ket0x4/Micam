.class public Lcom/android/camera/ui/V6SettingPage;
.super Landroid/widget/RelativeLayout;
.source "V6SettingPage.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mDefaultColumnCount:I

.field private mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorWidth:I

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mModeView:Lcom/android/camera/ui/ModeView;

.field public mOrientation:I

.field public mSettingButton:Lcom/android/camera/ui/V6SettingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAnimation()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    .line 87
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f090037

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p0, v0

    move p1, v1

    move p2, v2

    move p3, v3

    move-object p4, v4

    move-object p5, v5

    invoke-interface/range {p0 .. p5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const v4, 0x7f09010c

    const/4 v5, 0x2

    move v3, p1

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .line 474
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    const p1, 0x7f090059

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mFadeIn:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    const p1, 0x7f0900d6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v2, p1

    .line 480
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 481
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
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
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 66
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDefaultColumnCount:I

    const v0, 0x7f0900ce

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ModeView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    const v0, 0x7f0900cc

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    const v0, 0x7f090037

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingDismissButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mDismissButton:Lcom/android/camera/ui/SettingDismissButton;

    .line 70
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingPage;->mIndicatorWidth:I

    .line 72
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPage;->initAnimation()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeView;->setEnabled(Z)V

    .line 339
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    .line 344
    iput p1, p0, Lcom/android/camera/ui/V6SettingPage;->mOrientation:I

    .line 345
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPage;->mModeView:Lcom/android/camera/ui/ModeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ModeView;->setOrientation(IZ)V

    .line 346
    iget-object p0, p0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "V6SettingPage setVisibility ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VIEW_"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
