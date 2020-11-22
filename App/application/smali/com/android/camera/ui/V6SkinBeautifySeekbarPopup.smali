.class public Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6SkinBeautifySeekbarPopup.java"

# interfaces
.implements Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;


# instance fields
.field private mBar:Lcom/android/camera/ui/V6SeekBar;

.field private mMaxText:Landroid/widget/TextView;

.field private mMinText:Landroid/widget/TextView;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 1

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    .line 41
    iget-object p1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMinText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMaxText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/V6SeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f090014

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    const v0, 0x7f090088

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMinText:Landroid/widget/TextView;

    const v0, 0x7f090085

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mMaxText:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V

    return-void
.end method

.method public onValueChanged(IZ)V
    .locals 6

    .line 54
    iget p2, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    if-eq p1, p2, :cond_1

    .line 55
    iput p1, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    .line 56
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2, p1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 59
    new-instance v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 63
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 59
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 66
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

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    iget p0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mValue:I

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 72
    iget-object p0, p0, Lcom/android/camera/ui/V6SkinBeautifySeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
