.class public Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectSelectedOverlay"
.end annotation


# instance fields
.field protected mAnimator:Landroid/animation/ObjectAnimator;

.field protected mOffsetX:I

.field protected mOverlay:Landroid/graphics/drawable/Drawable;

.field protected mPosition:I

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;)V
    .locals 2

    .line 367
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 368
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 369
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080055

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 371
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method private calcOffsetX(II)I
    .locals 2

    .line 387
    invoke-direct {p0, p1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->getLeft(I)I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {v1}, Lcom/android/camera/ui/EffectPopup;->access$100(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_1

    if-ge p1, p2, :cond_0

    .line 390
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->access$100(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    .line 392
    iget-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p1}, Lcom/android/camera/ui/EffectPopup;->access$100(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    .line 395
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->getLeft(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getLeft(I)I
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p0}, Lcom/android/camera/ui/EffectPopup;->access$100(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 402
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .line 410
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 412
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p2}, Lcom/android/camera/ui/EffectPopup;->access$100(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    iget p3, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 414
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 416
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    .line 417
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 418
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 419
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr v2, p2

    .line 421
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOffsetX:I

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v1, p3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 422
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public select(I)V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->calcOffsetX(II)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 382
    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mPosition:I

    .line 383
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setOffsetX(I)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->mOffsetX:I

    .line 376
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p0}, Lcom/android/camera/ui/EffectPopup;->access$100(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void
.end method
