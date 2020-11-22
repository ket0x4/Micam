.class public Lcom/android/camera/ui/StereoPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "StereoPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;,
        Lcom/android/camera/ui/StereoPopup$AnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StereoPopup"


# instance fields
.field private mCurrentIndex:I

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListView:Lcom/android/camera/ui/HorizontalListView;

.field private mShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/StereoPopup;)Landroid/view/animation/Animation;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/StereoPopup;)Landroid/view/animation/Animation;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/StereoPopup;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/StereoPopup;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/StereoPopup;->mItemHeight:I

    return p0
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010018

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    .line 121
    iget-object p1, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/android/camera/ui/StereoPopup$AnimationListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/camera/ui/StereoPopup$AnimationListener;-><init>(Lcom/android/camera/ui/StereoPopup;Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/StereoPopup;->mShowAnimation:Landroid/view/animation/Animation;

    return-object p0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    if-nez p1, :cond_2

    .line 126
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010017

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    .line 127
    iget-object p1, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/android/camera/ui/StereoPopup$AnimationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/camera/ui/StereoPopup$AnimationListener;-><init>(Lcom/android/camera/ui/StereoPopup;Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 129
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/StereoPopup;->mHideAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 74
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 70
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StereoPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 0

    const-string p2, "pref_camera_stereo_key"

    .line 37
    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->filterValue()V

    .line 41
    new-instance p1, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/StereoPopup;)V

    .line 42
    iget-object p2, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget p2, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f09005a

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    .line 51
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    .line 52
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemHeight:I

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 86
    iget p1, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p2, p3}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 88
    iput p3, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    .line 89
    iget-object p2, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p2}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/StereoPopup;->notifyToDispatcher(ZZ)V

    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    .line 60
    iget v0, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Lcom/android/camera/ui/StereoPopup;->TAG:Ljava/lang/String;

    const-string v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->print()V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 97
    iget-object p0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StereoPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
