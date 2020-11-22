.class public Lcom/android/camera/ui/V6IndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "V6IndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mModeRemind:Landroid/view/View;

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/IconListPreference;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    return-void
.end method

.method private notifyClickAction(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->cancelRemind(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result p1

    if-nez p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    .line 162
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private notifyToModule()V
    .locals 8

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageDispatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIEW_"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    .line 197
    invoke-interface/range {v2 .. v7}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private onIndicatorValueChange()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->resetOtherSetting()V

    .line 94
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->refreshValue()V

    .line 95
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updatePopup()V

    .line 96
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->notifyToModule()V

    return-void
.end method

.method private refreshValue()V
    .locals 3

    .line 100
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0338

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pref_camera_manual_mode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetOtherSetting()V
    .locals 7

    .line 182
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    .line 183
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateExitButton()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 147
    iget-boolean v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 152
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePopup()V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePopup this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 132
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIEW_"

    .line 131
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->showPopup()V

    .line 136
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->clearRecoveredPopupListenerIfNeeded(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRemind()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNeedRemind(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/16 p5, 0xa

    if-eq p1, p5, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    .line 125
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected initializePopup()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected isIndicatorSelected()Z
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result p0

    return p0
.end method

.method public isItemSelected()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    return p0
.end method

.method public isPopupVisible()Z
    .locals 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 224
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIEW_"

    .line 223
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz p1, :cond_1

    .line 85
    instance-of p1, p1, Lcom/android/camera/ui/TwoStateImageView;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/ui/V6IndicatorButton;->notifyClickAction(Z)V

    .line 86
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->onIndicatorValueChange()V

    .line 88
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->onFinishInflate()V

    const v0, 0x7f09008a

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mModeRemind:Landroid/view/View;

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reloadPreference()V
    .locals 2

    const-string v0, "VIEW_"

    const-string v1, "indicatorbutton reloadPreference"

    .line 238
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateImage()V

    .line 240
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateExitButton()V

    .line 241
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateRemind()V

    .line 242
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public resetSettings()V
    .locals 2

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    .line 207
    invoke-direct {p0}, Lcom/android/camera/ui/V6IndicatorButton;->onIndicatorValueChange()V

    .line 208
    iget-boolean v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mSelected:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    .line 113
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 3

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->initializePopup()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 175
    iget v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mOrientation:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 176
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    :cond_0
    return-void
.end method
