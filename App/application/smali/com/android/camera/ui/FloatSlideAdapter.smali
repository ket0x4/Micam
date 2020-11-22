.class public Lcom/android/camera/ui/FloatSlideAdapter;
.super Ljava/lang/Object;
.source "FloatSlideAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/RollAdapter;


# instance fields
.field private mCenterItem:I

.field private mGapValue:F

.field private mItemCount:I

.field private mMaxValue:I

.field private mMinValue:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    .line 21
    iput p1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    .line 22
    iput p2, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMaxValue:I

    .line 23
    iput p3, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    .line 24
    iget p1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMaxValue:I

    iget p2, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mItemCount:I

    .line 25
    iget p1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mCenterItem:I

    return-void
.end method

.method private round(F)I
    .locals 2

    float-to-double v0, p1

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const-wide/high16 p0, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    :goto_0
    add-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public getCenterIndex()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mCenterItem:I

    return p0
.end method

.method public getItemIndexByValue(Ljava/lang/Object;)I
    .locals 1

    .line 76
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 79
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 80
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMaxValue:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 81
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getItemValue(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/ui/FloatSlideAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 49
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FloatSlideAdapter;->round(F)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getItemsCount()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mItemCount:I

    return p0
.end method

.method public getMaxItem()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mItemCount:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
