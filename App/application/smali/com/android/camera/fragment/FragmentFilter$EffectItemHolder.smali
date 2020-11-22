.class public abstract Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FragmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "EffectItemHolder"
.end annotation


# instance fields
.field protected mEffectIndex:I

.field protected mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/view/View;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    .line 399
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09003f

    .line 400
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
    .locals 0

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;->getRenderId(ILcom/android/camera/data/data/ComponentDataItem;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;->mEffectIndex:I

    .line 405
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;->mTextView:Landroid/widget/TextView;

    iget p1, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected getRenderId(ILcom/android/camera/data/data/ComponentDataItem;)I
    .locals 0

    .line 409
    iget-object p0, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
