.class public Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FragmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectItemAdapter"
.end annotation


# instance fields
.field protected mFilters:Lcom/android/camera/data/data/config/ComponentConfigFilter;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentConfigFilter;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 518
    iput-object p3, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->mFilters:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    .line 519
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->mFilters:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 534
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->mFilters:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 535
    check-cast p1, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;

    .line 536
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 537
    invoke-virtual {p1, p2, p0}, Lcom/android/camera/fragment/FragmentFilter$EffectItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 524
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0008

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 525
    new-instance p2, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/fragment/FragmentFilter$EffectStillItemHolder;-><init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/view/View;)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentFilter;->access$700(Lcom/android/camera/fragment/FragmentFilter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public updateData(Lcom/android/camera/data/data/config/ComponentConfigFilter;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemAdapter;->mFilters:Lcom/android/camera/data/data/config/ComponentConfigFilter;

    .line 547
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
