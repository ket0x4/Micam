.class public Lcom/android/camera/ui/PortraitButton;
.super Landroid/widget/ImageView;
.source "PortraitButton.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/MutexView;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHintShowAnimator:Landroid/animation/AnimatorSet;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSwitchOnAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p2, Lcom/android/camera/ui/PortraitButton$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/PortraitButton$1;-><init>(Lcom/android/camera/ui/PortraitButton;)V

    iput-object p2, p0, Lcom/android/camera/ui/PortraitButton;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PortraitButton;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private requestPortraitModeChange()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const v2, 0x7f0900ad

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-string v4, "pref_camera_portrait_mode_key"

    .line 114
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private reverseTransition()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object p0, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->reverse()V

    :cond_0
    return-void
.end method

.method private startTransition()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mSwitchOnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mHintShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 57
    iget-object p0, p0, Lcom/android/camera/ui/PortraitButton;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroid/widget/ImageView;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->reverseTransition()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 83
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->startTransition()V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/PortraitButton;->updatePreference()V

    .line 86
    invoke-direct {p0}, Lcom/android/camera/ui/PortraitButton;->requestPortraitModeChange()V

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public updatePreference()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0338

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0337

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PortraitButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
