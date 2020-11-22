.class public Lcom/android/camera/ui/GridSettingExpandedTextPopup;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingExpandedTextPopup.java"


# instance fields
.field private mLeftMargin:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    return-void
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 109
    invoke-direct {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->notifyPopupVisibleChange(Z)V

    return-void
.end method

.method public getAnimation(Z)Landroid/view/animation/Animation;
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f01000c

    goto :goto_0

    :cond_0
    const p1, 0x7f010015

    :goto_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 60
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mRightMargin:I

    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_2

    const p1, 0x7f01000b

    goto :goto_1

    :cond_2
    const p1, 0x7f010016

    :goto_1
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getItemResId()I
    .locals 0

    const p0, 0x7f0b0027

    return p0
.end method

.method protected initGridViewLayoutParam(I)V
    .locals 3

    .line 79
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/2addr p1, v0

    .line 81
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 82
    iget p1, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 83
    iget p1, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mRightMargin:I

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 85
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 86
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "pref_camera_face_beauty_switch_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 89
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0xb

    .line 87
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 92
    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    return-void
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 69
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 69
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 26
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    return-void
.end method

.method public show(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 100
    invoke-direct {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->notifyPopupVisibleChange(Z)V

    return-void
.end method

.method public updateBackground()V
    .locals 0

    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 1

    const v0, 0x7f0900e0

    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 126
    iget p0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 127
    invoke-virtual {p2, v0, v0, v0, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40800000    # 4.0f

    const/high16 p1, -0x40000000    # -2.0f

    .line 129
    invoke-virtual {p2, p0, v0, v0, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    :goto_0
    return-void
.end method
