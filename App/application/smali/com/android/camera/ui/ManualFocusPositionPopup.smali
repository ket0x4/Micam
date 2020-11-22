.class public Lcom/android/camera/ui/ManualFocusPositionPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualFocusPositionPopup.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;
    }
.end annotation


# static fields
.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I


# instance fields
.field private mCurrentIndex:I

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10102fe

    aput v3, v1, v2

    .line 39
    sput-object v1, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextActivatedColorState:[I

    new-array v0, v0, [I

    aput v2, v0, v2

    .line 40
    sput-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextDefaultColorState:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 43
    iput p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 48
    fill-array-data p2, :array_0

    const v0, 0x7f10002d

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextColor:Landroid/content/res/ColorStateList;

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070078

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineHalfHeight:F

    const p2, 0x7f07007b

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineWidth:I

    const p2, 0x7f070079

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineLineGap:I

    const p2, 0x7f07007a

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineTextGap:I

    const p2, 0x7f060023

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineColorDefault:I

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    return p0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 21
    sget-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextActivatedColorState:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 21
    sget-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextDefaultColorState:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineColorDefault:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ManualFocusPositionPopup;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineHalfHeight:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineTextGap:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineLineGap:I

    return p0
.end method

.method private getDisplayedFocusValue(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0f0273

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private mapFocusToIndex(I)I
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0x3e8

    .line 100
    invoke-static {p1, p0, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    .line 102
    div-int/lit8 p0, p0, 0xa

    rsub-int/lit8 p0, p0, 0x64

    return p0
.end method

.method private mapIndexToFocus(I)I
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    .line 106
    div-int/lit8 p1, p1, 0x64

    rsub-int p0, p1, 0x3e8

    return p0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0xa

    if-gt p2, p3, :cond_0

    mul-int/lit8 p3, p2, 0xa

    .line 68
    invoke-direct {p0, p3}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getDisplayedFocusValue(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    new-instance p2, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;-><init>(Lcom/android/camera/ui/ManualFocusPositionPopup;[Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f09005b

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V

    return-void
.end method

.method public onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 7

    .line 114
    invoke-direct {p0, p2}, Lcom/android/camera/ui/ManualFocusPositionPopup;->mapIndexToFocus(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setFocusPosition(I)V

    .line 115
    iget p1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    if-eq p2, p1, :cond_5

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 117
    :goto_1
    iput p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    .line 118
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 123
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ActivityBase;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v1, :cond_4

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const-string p1, "pref_camera_focus_mode_key"

    goto :goto_2

    :cond_3
    const-string p1, "pref_focus_position_key"

    :goto_2
    move-object v5, p1

    const/4 v6, 0x0

    .line 127
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_5
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    .line 95
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->mapFocusToIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 140
    iget-object p0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
