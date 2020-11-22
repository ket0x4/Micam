.class public Lcom/android/camera/ui/V6TopTextView;
.super Landroid/widget/TextView;
.source "V6TopTextView.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/AnimateView;


# instance fields
.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTapButton()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 72
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPressed(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto :goto_1

    .line 84
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->toggle()V

    :goto_1
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getPreferenceSize()I
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f010014

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 259
    new-instance v0, Lcom/android/camera/ui/SimpleAnimationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private toggle()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 96
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->reloadPreference()V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6TopTextView;->notifyPopupVisibleChange(Z)V

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 206
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    .line 63
    instance-of p1, p5, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->notifyClickToDispatcher()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public hide(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    const/4 p1, 0x0

    .line 238
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6TopTextView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 240
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected initializePopup()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_1
    return-void

    .line 183
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need to initialize popup, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "V6TopTextView"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isOverridden()Z
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/camera/ui/V6TopTextView;->mOverrideValue:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyClickToDispatcher()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected notifyPopupVisibleChange(Z)V
    .locals 0

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setPressed(Z)V

    return v2

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->dismissPopup()Z

    return v2

    :cond_2
    if-ne v0, v2, :cond_4

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 46
    invoke-direct {p0}, Lcom/android/camera/ui/V6TopTextView;->doTapButton()V

    .line 48
    iget-object p1, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez p1, :cond_3

    .line 49
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 51
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_4
    return v2
.end method

.method public recoverIfNeeded()V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->showPopup()V

    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->updateTitle()V

    .line 109
    iget-object p0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    const/4 p1, 0x1

    .line 248
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6TopTextView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopTextView;->initializePopup()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/V6TopTextView;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 175
    invoke-interface {v0, v1, v1}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopTextView;->notifyPopupVisibleChange(Z)V

    :cond_0
    return-void
.end method

.method protected updateTitle()V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lcom/android/camera/ui/V6TopTextView;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
