.class public Lcom/android/camera/ui/SettingScreenView;
.super Lcom/android/camera/ui/SettingView;
.source "SettingScreenView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mColumnCount:I

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/View;

.field private mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPopupRoot:Landroid/view/ViewGroup;

.field private mRowCount:I

.field private mScreenHeight:I

.field private mSettingScreen:Lcom/android/camera/ui/ScreenView;

.field protected mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    return-void
.end method

.method private getActualColumnCount()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private initScreenView()V
    .locals 2

    const/4 v0, 0x4

    .line 106
    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    const/4 v0, 0x1

    .line 107
    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    .line 108
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    return-void
.end method

.method private initializeSplitLine()V
    .locals 3

    .line 85
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 90
    iget v2, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 91
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v1, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 94
    iget-object p0, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object p0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getVisibility()I
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method protected initIndicators(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 112
    iget v1, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    iget v2, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int/2addr v1, v2

    .line 113
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    .line 115
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    int-to-float v3, v3

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/LayoutInflater;

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v2, :cond_4

    .line 123
    new-instance v15, Lcom/android/camera/ui/StaticGridView;

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v7

    iget v9, v0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    move-object v4, v15

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    move v11, v13

    :goto_2
    if-ge v11, v1, :cond_3

    .line 127
    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int/2addr v4, v14

    iget v5, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v11

    .line 128
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    goto :goto_4

    .line 131
    :cond_1
    iget-object v5, v0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v10, p1

    .line 132
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/android/camera/preferences/IconListPreference;

    if-eqz v16, :cond_2

    const v4, 0x7f0b004a

    .line 134
    invoke-virtual {v12, v4, v15, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/camera/ui/SubScreenIndicatorButton;

    .line 137
    iget-object v6, v0, Lcom/android/camera/ui/SettingView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    iget-object v7, v0, Lcom/android/camera/ui/SettingScreenView;->mPopupRoot:Landroid/view/ViewGroup;

    const/16 v17, -0x2

    iget-object v8, v0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v5, v0, Lcom/android/camera/ui/SettingScreenView;->mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-object v4, v9

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v19, v8

    move v8, v3

    move-object v13, v9

    move/from16 v9, v17

    move-object/from16 v10, v19

    move/from16 v17, v11

    move-object/from16 v11, v18

    invoke-virtual/range {v4 .. v11}, Lcom/android/camera/ui/SubScreenIndicatorButton;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 139
    iget-object v4, v0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/preferences/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_2
    move/from16 v17, v11

    :goto_3
    add-int/lit8 v11, v17, 0x1

    const/4 v13, 0x0

    goto :goto_2

    .line 144
    :cond_3
    :goto_4
    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method public initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispatcher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/camera/ui/MessageDispatcher;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    .line 59
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    .line 63
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 64
    iput-object p4, p0, Lcom/android/camera/ui/SettingView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    .line 65
    iput-object p2, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    .line 66
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->initScreenView()V

    .line 68
    iput p3, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    const p1, 0x7f0900cf

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ScreenView;

    iput-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    .line 70
    iget-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget p4, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    const/4 v0, -0x1

    invoke-direct {p3, v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    .line 73
    iget-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    .line 74
    iput-object p5, p0, Lcom/android/camera/ui/SettingScreenView;->mPopupRoot:Landroid/view/ViewGroup;

    .line 75
    iput-object p6, p0, Lcom/android/camera/ui/SettingScreenView;->mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 76
    iget-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0900d2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 78
    iget-object p1, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/SettingScreenView;->initIndicators(Ljava/util/List;)V

    .line 80
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->initializeSplitLine()V

    .line 81
    iget-object p0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900d8

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 151
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/V6AbstractIndicator;->setEnabled(Z)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 219
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->show()V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->dismiss()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
