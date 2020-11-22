.class public Lcom/android/camera/fragment/manually/ManuallyDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ManuallyDecoration.java"


# instance fields
.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    .line 20
    iput p1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object p0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 37
    iget p3, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    add-int/lit8 v0, p3, -0x1

    iget p0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    mul-int/2addr v0, p0

    div-int/2addr v0, p3

    sub-int v1, p0, v0

    .line 40
    rem-int/2addr p2, p3

    mul-int/2addr p2, v1

    sub-int/2addr v0, p2

    const/4 p3, 0x0

    .line 45
    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v0, p0

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    move-object/from16 v3, p2

    .line 52
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 67
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 70
    iget v9, v0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int/2addr v9, v8

    .line 71
    iget-object v15, v0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    if-eqz v15, :cond_0

    int-to-float v11, v6

    int-to-float v12, v8

    int-to-float v13, v7

    int-to-float v14, v9

    move-object/from16 v10, p1

    .line 72
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int/2addr v7, v8

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 78
    iget v5, v0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int/2addr v5, v4

    .line 79
    iget-object v13, v0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    if-eqz v13, :cond_1

    int-to-float v9, v4

    int-to-float v10, v6

    int-to-float v11, v5

    int-to-float v12, v7

    move-object/from16 v8, p1

    .line 80
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    return-void
.end method
