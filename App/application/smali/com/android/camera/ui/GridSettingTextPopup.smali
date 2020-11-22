.class public Lcom/android/camera/ui/GridSettingTextPopup;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingTextPopup.java"


# instance fields
.field private mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initializeSplitLine()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0, v0, v1, v1}, Lcom/android/camera/ui/GridSettingTextPopup;->setSplitLineParameters(IZZ)V

    return-void
.end method

.method private setSplitLineParameters(IZZ)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 84
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 85
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 86
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 88
    iget-object p1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    .line 89
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getItemResId()I
    .locals 0

    const p0, 0x7f0b002c

    return p0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 3

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    .line 33
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_audio_focus_mode_key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "pref_audio_focus_key"

    .line 34
    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_tilt_shift_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "pref_camera_tilt_shift_key"

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    goto :goto_0

    .line 38
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    .line 40
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 42
    invoke-direct {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->initializeSplitLine()V

    return-void
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 134
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 134
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    const v0, 0x7f0900e3

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 3

    .line 111
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;->updateItemView(ILandroid/view/View;)V

    if-eqz p2, :cond_1

    const v0, 0x7f0900e0

    .line 114
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10000c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mDisableKeys:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 119
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 120
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mDisableKeys:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 123
    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 125
    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
