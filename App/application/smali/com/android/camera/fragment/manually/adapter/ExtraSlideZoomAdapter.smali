.class public Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;
.super Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
.source "ExtraSlideZoomAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;


# static fields
.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I

.field private static sX:[F

.field private static sY:[F


# instance fields
.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mEnable:Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryLayouts:[Landroid/text/StaticLayout;

.field private mEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomMax:I

.field private mZoomRatioMax:I

.field private mZoomRatioMin:I

.field private mZoomRatioTele:I

.field private mZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mZoomRatioWide:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10102fe

    aput v3, v1, v2

    .line 55
    sput-object v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    new-array v0, v0, [I

    aput v2, v0, v2

    .line 56
    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextDefaultColorState:[I

    const/16 v0, 0xa

    new-array v1, v0, [F

    .line 138
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sX:[F

    new-array v0, v0, [F

    .line 139
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sY:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41a00000    # 20.0f
        0x41c80000    # 25.0f
        0x41d80000    # 27.0f
        0x41e80000    # 29.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_1
    .array-data 4
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x435c0000    # 220.0f
        0x43b90000    # 370.0f
        0x43ff0000    # 510.0f
        0x44110000    # 580.0f
        0x44250000    # 660.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;-><init>()V

    const/16 v0, 0x64

    .line 42
    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMin:I

    .line 76
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 77
    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    .line 78
    iput-object p4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    .line 80
    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    invoke-virtual {p2, p3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    .line 82
    move-object p2, p1

    check-cast p2, Lcom/android/camera/ActivityBase;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p2

    check-cast p2, Lcom/android/camera/module/BaseModule;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0f039b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioWide:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0f039a

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    .line 85
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getZoomMax()I

    move-result p3

    iput p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomMax:I

    .line 86
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getZoomMaxRatio()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    .line 88
    sget-object p2, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sX:[F

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->convertSplineXToEntryX([F)[F

    move-result-object p2

    .line 89
    sget-object p3, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sY:[F

    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->convertSplineYToZoomRatioY([F)[F

    move-result-object p3

    .line 90
    invoke-static {p2, p3}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p4

    iput-object p4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryToZoomRatioSpline:Landroid/util/Spline;

    .line 91
    invoke-static {p3, p2}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioToEntrySpline:Landroid/util/Spline;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->initStyle(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 96
    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioWide:I

    .line 97
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    .line 98
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p1, p4

    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    .line 99
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p4, 0x2

    aput-object p2, p1, p4

    .line 101
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 102
    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length p1, p1

    new-array p1, p1, [Landroid/text/StaticLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntries:[Ljava/lang/CharSequence;

    array-length p2, p1

    if-ge p3, p2, :cond_0

    .line 104
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    new-instance p4, Landroid/text/StaticLayout;

    aget-object v1, p1, p3

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private convertSplineXToEntryX([F)[F
    .locals 5

    .line 110
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget p0, p1, p0

    const/high16 v0, 0x41200000    # 10.0f

    sub-float/2addr p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 112
    array-length v1, p1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 113
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 114
    aget v3, p1, v2

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 115
    aget v3, p1, v2

    aput v3, v1, v2

    goto :goto_1

    .line 117
    :cond_0
    aget v3, p1, v2

    sub-float/2addr v3, v0

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42140000    # 37.0f

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private convertSplineYToZoomRatioY([F)[F
    .locals 6

    .line 125
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    float-to-int v0, v0

    .line 126
    array-length v1, p1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 127
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 128
    aget v3, p1, v2

    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioTele:I

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 129
    aget v3, p1, v2

    aput v3, v1, v2

    goto :goto_1

    .line 131
    :cond_0
    aget v3, p1, v2

    int-to-float v5, v4

    sub-float/2addr v3, v5

    sub-int v5, v0, v4

    int-to-float v5, v5

    div-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioMax:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    mul-float/2addr v3, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private drawText(ILandroid/graphics/Canvas;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object v2, v2, p1

    .line 191
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 193
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getDisplayedZoomRatio(I)Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 171
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 172
    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v2, 0x21

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 174
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    const-string p1, "X"

    invoke-virtual {v0, p1, p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private indexToSection(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xa

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 p0, 0x2f

    if-ne p1, p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 144
    fill-array-data v0, :array_0

    const v1, 0x7f10002d

    .line 145
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070078

    .line 151
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineHalfHeight:F

    const v2, 0x7f07007b

    .line 152
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    const v2, 0x7f070079

    .line 153
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineLineGap:I

    const v2, 0x7f07007a

    .line 154
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineTextGap:I

    const v2, 0x7f060043

    .line 155
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineColorDefault:I

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 163
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    .line 165
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f100044

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 166
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f100045

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method private mapPositionToZoomRatio(F)I
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;Z)V
    .locals 6

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_1

    .line 209
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    goto :goto_0

    .line 210
    :cond_1
    iget p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineColorDefault:I

    .line 208
    :goto_0
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 211
    iget v4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineHalfHeight:F

    neg-float v2, v4

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 202
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mTextPaint:Landroid/text/TextPaint;

    if-eqz p3, :cond_3

    .line 203
    sget-object p3, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextActivatedColorState:[I

    goto :goto_2

    .line 204
    :cond_3
    sget-object p3, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->sTextDefaultColorState:[I

    :goto_2
    iput-object p3, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 206
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->indexToSection(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->drawText(ILandroid/graphics/Canvas;)V

    :goto_3
    return-void
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 0

    .line 235
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    const/16 p0, 0x30

    return p0
.end method

.method public mapZoomRatioToPosition(I)F
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mZoomRatioToEntrySpline:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public measureGap(I)F
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineLineGap:I

    :goto_0
    int-to-float p0, p0

    return p0

    .line 227
    :cond_1
    :goto_1
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineTextGap:I

    goto :goto_0
.end method

.method public measureWidth(I)F
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mLineWidth:I

    int-to-float p0, p0

    return p0

    .line 218
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEntryLayouts:[Landroid/text/StaticLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->indexToSection(I)I

    move-result p0

    aget-object p0, v0, p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p0

    return p0
.end method

.method public onPositionSelect(Lcom/android/camera/ui/HorizontalSlideView;F)V
    .locals 3

    .line 245
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEnable:Z

    if-nez p1, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    .line 249
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mapPositionToZoomRatio(F)I

    move-result p1

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 252
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentMode:I

    invoke-virtual {p2, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz p2, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, p1, v2}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    :cond_1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideZoomAdapter;->mEnable:Z

    return-void
.end method
