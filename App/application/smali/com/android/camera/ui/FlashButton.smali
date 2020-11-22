.class public Lcom/android/camera/ui/FlashButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "FlashButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String; = "FlashButton"


# instance fields
.field private mDispatching:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 34
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private doTapButton()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->triggerPopup()V

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    :goto_0
    return-void
.end method

.method private findCurrentIndex()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getKey()Ljava/lang/String;
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

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

    .line 187
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 188
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPopupShown()Z
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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

    .line 376
    iget-object v0, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 379
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    const/4 v1, 0x0

    const v2, 0x7f090100

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 380
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mDispatching:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyPopupVisibleChange(Z)V
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const v2, 0x7f090100

    const/4 v3, 0x3

    .line 370
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    .line 366
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private toggle()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 177
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->reloadPreference()V

    .line 183
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    return-void
.end method

.method private triggerPopup()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 151
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->showPopup()V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->dismissPopup()Z

    .line 351
    instance-of p1, p5, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->notifyClickToDispatcher()V

    goto :goto_0

    .line 356
    :cond_2
    instance-of p1, p4, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    .line 357
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FlashButton;->notifyPopupVisibleChange(Z)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected initializePopup()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_1
    return-void

    .line 322
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isOverridden()Z
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->doTapButton()V

    .line 440
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method public refreshValue()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 216
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 301
    invoke-super {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 303
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_2

    .line 304
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup()V
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->initializePopup()V

    .line 310
    iget-object p0, p0, Lcom/android/camera/ui/FlashButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 311
    invoke-interface {p0, v0, v0}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    :cond_0
    return-void
.end method
