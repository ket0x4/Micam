.class public Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;
.super Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;
.source "FragmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectStillItemHolder"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mSelectedIndicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/view/View;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;-><init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/view/View;)V

    const p1, 0x7f09003d

    .line 419
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    const p1, 0x7f09003e

    .line 420
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
    .locals 8

    .line 425
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    iget v1, p2, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentFilter;->access$200(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v0

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-ne p1, v0, :cond_2

    .line 428
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 429
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mImageView:Landroid/widget/ImageView;

    iget v6, p2, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-static {p1, v0, v6}, Lcom/android/camera/fragment/FragmentFilter;->access$300(Lcom/android/camera/fragment/FragmentFilter;Landroid/widget/ImageView;I)V

    .line 430
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget p2, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v6, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    const v6, 0x7f0f0040

    .line 432
    invoke-virtual {p2, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 431
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$1;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$1;-><init>(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)V

    const-wide/16 v6, 0x64

    invoke-virtual {p1, p2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentFilter;->access$100(Lcom/android/camera/fragment/FragmentFilter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 443
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 444
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    .line 445
    invoke-static {p2}, Lcom/android/camera/fragment/FragmentFilter;->access$500(Lcom/android/camera/fragment/FragmentFilter;)Lmiui/view/animation/CubicEaseOutInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance p2, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$2;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$2;-><init>(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)V

    .line 446
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 461
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 463
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 469
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {p2}, Lcom/android/camera/fragment/FragmentFilter;->access$100(Lcom/android/camera/fragment/FragmentFilter;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {p2}, Lcom/android/camera/fragment/FragmentFilter;->access$600(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 470
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 471
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    .line 472
    invoke-static {p2}, Lcom/android/camera/fragment/FragmentFilter;->access$500(Lcom/android/camera/fragment/FragmentFilter;)Lmiui/view/animation/CubicEaseOutInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance p2, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$3;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder$3;-><init>(Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;)V

    .line 473
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 487
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 489
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method
