.class public Lcom/android/camera/ui/SplitLineDrawer;
.super Landroid/view/View;
.source "SplitLineDrawer.java"


# instance fields
.field private mBottomVisible:Z

.field private mColumnCount:I

.field private mLineColor:I

.field private mRowCount:I

.field private mTopVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const p1, 0x33ffffff

    .line 15
    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const p1, 0x33ffffff

    .line 15
    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const p1, 0x33ffffff

    .line 15
    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method


# virtual methods
.method public initialize(II)V
    .locals 0

    .line 42
    iput p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    .line 43
    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 48
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 49
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v7, 0x1

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    move v10, v7

    .line 51
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    if-ge v10, v0, :cond_0

    mul-int v1, v10, v8

    .line 52
    div-int v2, v1, v0

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-int/2addr v1, v0

    int-to-float v4, v1

    add-int/lit8 v0, v9, -0x1

    int-to-float v5, v0

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    xor-int/2addr v7, v0

    const/4 v0, 0x0

    move v10, v0

    .line 56
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-gt v10, v0, :cond_5

    if-eqz v10, :cond_1

    if-ne v10, v0, :cond_3

    :cond_1
    if-nez v10, :cond_2

    .line 57
    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-ne v10, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eqz v0, :cond_4

    :cond_3
    int-to-float v1, v7

    mul-int v0, v10, v9

    .line 58
    iget v2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int v3, v0, v2

    int-to-float v3, v3

    sub-int v4, v8, v7

    int-to-float v4, v4

    div-int/2addr v0, v2

    int-to-float v5, v0

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 61
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    .line 31
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    .line 32
    iput-boolean p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method
