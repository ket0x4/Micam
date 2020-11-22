.class public Lcom/android/camera/ui/ZoomPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ZoomPopup.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;
    }
.end annotation


# static fields
.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I


# instance fields
.field private mCurrentPosition:I

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:I

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomMax:I

.field private mZoomMaxRatio:I

.field private mZoomMinRatio:I

.field private mZoomRatio:I

.field private mZoomSections:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10102fe

    aput v3, v1, v2

    .line 54
    sput-object v1, Lcom/android/camera/ui/ZoomPopup;->sTextActivatedColorState:[I

    new-array v0, v0, [I

    aput v2, v0, v2

    .line 55
    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextDefaultColorState:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x64

    .line 39
    iput p2, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMinRatio:I

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 63
    fill-array-data p2, :array_0

    const v0, 0x7f10002d

    .line 64
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mTextColor:Landroid/content/res/ColorStateList;

    .line 67
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070078

    .line 70
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineHalfHeight:F

    const v0, 0x7f07007b

    .line 71
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineWidth:I

    const v0, 0x7f070079

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineLineGap:I

    const v0, 0x7f07007a

    .line 73
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineTextGap:I

    const v0, 0x7f060023

    .line 74
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ZoomPopup;->mLineColorDefault:I

    .line 76
    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f100044

    invoke-direct {p2, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/camera/ui/ZoomPopup;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 77
    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f100045

    invoke-direct {p2, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/camera/ui/ZoomPopup;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    return p0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 31
    sget-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextActivatedColorState:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 31
    sget-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextDefaultColorState:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ZoomPopup;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineColorDefault:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ZoomPopup;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineHalfHeight:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineTextGap:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineLineGap:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomSections:I

    return p0
.end method

.method private getDisplayedZoomRatio(I)Ljava/lang/CharSequence;
    .locals 3

    .line 105
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 106
    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPopup;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v2, 0x21

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 107
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    const-string p1, "X"

    invoke-virtual {v0, p1, p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private mapPositionToZoomRatio(I)I
    .locals 0

    .line 133
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMinRatio:I

    mul-int/lit8 p1, p1, 0x64

    div-int/lit8 p1, p1, 0xa

    add-int/2addr p0, p1

    return p0
.end method

.method private mapZoomRatioToPosition(I)I
    .locals 0

    .line 129
    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMinRatio:I

    sub-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0xa

    div-int/lit8 p1, p1, 0x64

    return p1
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V
    .locals 1

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispatcher;)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    .line 85
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getZoomMax()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMax:I

    .line 86
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getZoomMaxRatio()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMaxRatio:I

    .line 87
    iget p1, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMaxRatio:I

    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomSections:I

    .line 89
    iget p1, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomSections:I

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 90
    iget p2, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMinRatio:I

    :goto_0
    iget p3, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMaxRatio:I

    if-gt p2, p3, :cond_0

    .line 91
    div-int/lit8 p3, p2, 0x64

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0, p2}, Lcom/android/camera/ui/ZoomPopup;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, p3

    add-int/lit8 p2, p2, 0x64

    goto :goto_0

    .line 94
    :cond_0
    new-instance p2, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;-><init>(Lcom/android/camera/ui/ZoomPopup;[Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->reloadPreference()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    const v0, 0x7f09005b

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V

    return-void
.end method

.method public onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 7

    .line 141
    iget p1, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    if-eq p2, p1, :cond_2

    .line 142
    iput p2, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    .line 143
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-direct {p0, p2}, Lcom/android/camera/ui/ZoomPopup;->mapPositionToZoomRatio(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 147
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_2
    return-void
.end method

.method public passTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()I

    move-result v0

    .line 121
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatio:I

    .line 124
    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatio:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ZoomPopup;->mapZoomRatioToPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget p0, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:I

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 160
    iget-object p0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
