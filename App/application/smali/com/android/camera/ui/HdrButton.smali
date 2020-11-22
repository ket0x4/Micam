.class public Lcom/android/camera/ui/HdrButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "HdrButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private doTapButton()V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 250
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->showPopup()V

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->toggle()V

    :goto_0
    return-void
.end method

.method private findCurrentIndex()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getKey()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

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

    .line 277
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 278
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initializePopup()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_1
    return-void

    .line 314
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need to initialize popup, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HdrButton"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isPopupShown()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const v2, 0x7f090104

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 139
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyPopupVisibleChange(Z)V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/AnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const v2, 0x7f090104

    const/4 v3, 0x3

    .line 154
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    .line 150
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private toggle()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 265
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->reloadPreference()V

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    return-void
.end method


# virtual methods
.method public couldBeVisible()Z
    .locals 2

    .line 160
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p0, p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public dismissPopup()Z
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

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

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->dismissPopup()Z

    .line 291
    instance-of p1, p5, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->notifyClickToDispatcher()V

    goto :goto_0

    .line 296
    :cond_2
    instance-of p1, p4, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    .line 297
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HdrButton;->notifyPopupVisibleChange(Z)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isOverridden()Z
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mOverrideValue:Ljava/lang/String;

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

    .line 239
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->doTapButton()V

    .line 240
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method public refreshValue()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->findCurrentIndex()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 92
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/HdrButton;->refreshValue()V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/HdrButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public showPopup()V
    .locals 1

    .line 305
    invoke-direct {p0}, Lcom/android/camera/ui/HdrButton;->initializePopup()V

    .line 306
    iget-object p0, p0, Lcom/android/camera/ui/HdrButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 307
    invoke-interface {p0, v0, v0}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    :cond_0
    return-void
.end method
