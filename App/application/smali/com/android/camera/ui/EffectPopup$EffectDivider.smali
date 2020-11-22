.class public Lcom/android/camera/ui/EffectPopup$EffectDivider;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectDivider"
.end annotation


# instance fields
.field protected mFrameWidth:I

.field protected mPadding:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPosition:I

.field protected mVerticalPadding:I

.field protected mWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;I)V
    .locals 1

    .line 318
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 319
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070050

    .line 320
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPadding:I

    const v0, 0x7f07004e

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mWidth:I

    const v0, 0x7f07004c

    .line 322
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mFrameWidth:I

    const v0, 0x7f07004d

    .line 323
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mVerticalPadding:I

    .line 324
    iput p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPosition:I

    .line 326
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    .line 327
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    const v0, 0x7f060019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mWidth:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 352
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    .line 354
    iget p3, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPosition:I

    if-ne p2, p3, :cond_0

    .line 356
    iget p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mFrameWidth:I

    iget p0, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPadding:I

    sub-int/2addr p2, p0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .line 334
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 336
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    iget v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mVerticalPadding:I

    add-int/2addr p3, v0

    .line 337
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mVerticalPadding:I

    sub-int/2addr v0, v1

    .line 339
    iget v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPosition:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 341
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 342
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 343
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    .line 344
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr v2, p2

    iget p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mFrameWidth:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v2, p2

    int-to-float v6, v2

    int-to-float v5, p3

    int-to-float v7, v0

    .line 346
    iget-object v8, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
