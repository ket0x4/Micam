.class public Lcom/android/camera/ui/EffectButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "EffectButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# static fields
.field private static TAG:Ljava/lang/String; = "EffectButton"


# instance fields
.field private mDispatching:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/EffectPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSavedValue:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    .line 31
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    return-void
.end method

.method private doTapButton()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->triggerPopup()V

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->toggle()V

    :goto_0
    return-void
.end method

.method private findCurrentIndex()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getKey()Ljava/lang/String;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

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

    .line 154
    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getValue()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isPopupShown()Z
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

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

.method private notifyClickToDispatcher()V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 314
    iput-boolean v1, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    const/4 v1, 0x0

    .line 315
    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f09010c

    const/4 v3, 0x2

    .line 320
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    .line 316
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    .line 323
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshIcon()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->findCurrentIndex()I

    move-result v0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f0800cb

    goto :goto_0

    :cond_1
    const v0, 0x7f0800ca

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private toggle()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 144
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->reloadPreference()V

    .line 150
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    return-void
.end method

.method private triggerPopup()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 107
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setPressed(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->showPopup()V

    .line 114
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setPressed(Z)V

    .line 292
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->stopEffectRender()V

    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_0
    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 304
    instance-of p1, p5, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected initializePopup()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz p0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    :cond_1
    return-void

    .line 271
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isOverridden()Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 0

    .line 338
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 76
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/TwoStateImageView;->setPressed(Z)V

    return v2

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    return v2

    .line 84
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne v0, v2, :cond_5

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->doTapButton()V

    .line 87
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 90
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result p1

    if-nez p1, :cond_4

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setPressed(Z)V

    .line 93
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_5
    return v2
.end method

.method public recoverIfNeeded()V
    .locals 0

    return-void
.end method

.method public refreshValue()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 249
    invoke-super {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 251
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz p0, :cond_2

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/EffectPopup;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 161
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup()V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->initializePopup()V

    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/EffectPopup;->setOrientation(IZ)V

    .line 260
    iget-object p0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->startEffectRender()V

    :cond_0
    return-void
.end method
