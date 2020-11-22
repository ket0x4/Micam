.class public Lcom/android/camera/ui/NumericListAdapter;
.super Ljava/lang/Object;
.source "NumericListAdapter.java"


# instance fields
.field private mGapValue:I

.field private mMaxValue:I

.field private mMinValue:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    .line 20
    iput p1, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    .line 21
    iput p2, p0, Lcom/android/camera/ui/NumericListAdapter;->mMaxValue:I

    .line 22
    iput p3, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/ui/NumericListAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 27
    iget v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    iget p0, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemIndexByValue(Ljava/lang/Object;)I
    .locals 1

    .line 46
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mMaxValue:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    if-lt p1, v0, :cond_1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 50
    iget p0, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getItemValue(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/ui/NumericListAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 35
    iget v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    iget p0, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getItemsCount()I
    .locals 2

    .line 41
    iget v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mMaxValue:I

    iget v1, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    div-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
