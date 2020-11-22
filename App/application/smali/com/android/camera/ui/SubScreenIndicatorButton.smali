.class public Lcom/android/camera/ui/SubScreenIndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "SubScreenIndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;


# instance fields
.field private mOverrideValue:Ljava/lang/String;

.field private mParentPopup:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method private getPreferenceSize()I
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 191
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initializePopup()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 111
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no need to initialize popup, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SubScreenIndicatorButton"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyMessageToDispatcher(I)V
    .locals 8

    .line 195
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

    .line 196
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v6

    move v3, p1

    move-object v7, p0

    .line 199
    invoke-interface/range {v2 .. v7}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private toggle()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 178
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    :cond_1
    const/4 v0, 0x6

    .line 186
    invoke-direct {p0, v0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->setPressed(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/SubScreenPopup;->dismissChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_2

    .line 52
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->reloadPreference()V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getShowedColor()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getShowedColor()I

    move-result p0

    return p0

    .line 74
    :cond_0
    sget p0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_DEFAULT:I

    return p0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 0

    .line 104
    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    .line 106
    check-cast p7, Lcom/android/camera/ui/SubScreenPopup;

    iput-object p7, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    return-void
.end method

.method public isOverridden()Z
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 126
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6AbstractIndicator;->setPressed(Z)V

    return v2

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    return v2

    .line 134
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v0, v2, :cond_8

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {v0, p1, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->isOverridden()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->hasPopup()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 137
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->dismissPopup()Z

    goto :goto_1

    .line 138
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->showPopup()V

    .line 139
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 146
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_7

    .line 147
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6AbstractIndicator;->setPressed(Z)V

    .line 148
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez p1, :cond_7

    .line 149
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->toggle()V

    :cond_7
    const/16 p1, 0xa

    .line 152
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SubScreenIndicatorButton;->notifyMessageToDispatcher(I)V

    :cond_8
    return v2
.end method

.method public reloadPreference()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->updateContent()V

    .line 64
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz p0, :cond_0

    .line 228
    invoke-interface {p0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 3

    .line 159
    invoke-direct {p0}, Lcom/android/camera/ui/SubScreenIndicatorButton;->initializePopup()V

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 161
    iget v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mOrientation:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenIndicatorButton;->mParentPopup:Lcom/android/camera/ui/SubScreenPopup;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/SubScreenPopup;->showChildPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    :cond_0
    return-void
.end method

.method protected updateContent()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContent:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_skin_beautify_skin_color_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 210
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_skin_beautify_slim_face_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 211
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_skin_beautify_skin_smooth_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 212
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_skin_beautify_enlarge_eye_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_focus_position_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContent:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 213
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContent:Landroid/widget/TextView;

    .line 214
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 213
    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->getSkinBeautifyHumanReadableValue(Landroid/content/Context;Lcom/android/camera/preferences/ListPreference;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
