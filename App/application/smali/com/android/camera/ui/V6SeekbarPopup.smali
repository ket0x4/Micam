.class public Lcom/android/camera/ui/V6SeekbarPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6SeekbarPopup.java"

# interfaces
.implements Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;


# instance fields
.field private mBar:Lcom/android/camera/ui/V6SeekBar;

.field private mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private filterPreference(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pref_delay_capture_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 89
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "0"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "pref_camera_face_beauty_key"

    .line 41
    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_delay_capture_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "pref_delay_capture_key"

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .line 44
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SeekbarPopup;->filterPreference(Lcom/android/camera/preferences/IconListPreference;)V

    .line 47
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 48
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 49
    iget-object p1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 50
    iget-object p0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/V6SeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f090014

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    const v0, 0x7f0900e4

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V

    return-void
.end method

.method public onValueChanged(IZ)V
    .locals 6

    .line 62
    iget p2, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    if-eq p1, p2, :cond_1

    .line 63
    iput p1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 64
    iget-object p2, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    .line 65
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2, p1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 68
    new-instance v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 72
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 68
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iget v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    iget p0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 81
    iget-object p0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setOrientation(IZ)V

    return-void
.end method
