.class Lcom/android/camera/ui/StaticGridView;
.super Landroid/view/ViewGroup;
.source "SettingScreenView.java"


# instance fields
.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/StaticGridView;->set(IIII)V

    const/4 p1, 0x1

    .line 255
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 322
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected doLayout(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 316
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StaticGridView;->layoutChildByIndex(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .locals 6

    .line 298
    iget v0, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    div-int v1, p1, v0

    .line 299
    rem-int v0, p1, v0

    .line 300
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 301
    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    .line 303
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    iget p0, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    mul-int v5, p0, v1

    add-int/2addr v5, v3

    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    sub-int/2addr v2, v3

    add-int/2addr v1, v3

    mul-int/2addr p0, v1

    sub-int/2addr p0, v3

    invoke-virtual {p1, v4, v5, v2, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method measureDimension(II)I
    .locals 1

    .line 286
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    if-eq p0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 290
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    return p0

    :cond_1
    return p2

    .line 292
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 312
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/StaticGridView;->doLayout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 277
    iget v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    iget v1, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    mul-int/2addr v0, v1

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/StaticGridView;->measureDimension(II)I

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    iget v1, p0, Lcom/android/camera/ui/StaticGridView;->mRowCount:I

    mul-int/2addr v0, v1

    .line 279
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/ui/StaticGridView;->measureDimension(II)I

    move-result p2

    .line 277
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 280
    iget p1, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    .line 281
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    .line 282
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 280
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    return-void
.end method

.method public set(IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 264
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/StaticGridView;->mRowCount:I

    .line 265
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    .line 266
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    .line 267
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    return-void
.end method
