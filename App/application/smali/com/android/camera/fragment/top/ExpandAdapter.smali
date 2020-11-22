.class public Lcom/android/camera/fragment/top/ExpandAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExpandAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 43
    iput-object p2, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;

    .line 45
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 46
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentMode:I

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget p2, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExpandAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 61
    iget-object v0, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 62
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0900e0

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentValue:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 69
    invoke-virtual {v0, v1, v1, v1, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const p2, 0x7f08001d

    .line 70
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 72
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0040

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/android/camera/fragment/top/ExpandAdapter$1;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/camera/fragment/top/ExpandAdapter$1;-><init>(Lcom/android/camera/fragment/top/ExpandAdapter;Landroid/widget/TextView;Ljava/lang/String;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, p2, p0, p1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40800000    # 4.0f

    const/high16 p1, -0x40000000    # -2.0f

    .line 82
    invoke-virtual {v0, p0, v1, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 p0, 0x0

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentValue:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentMode:I

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 101
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;->onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExpandAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0b0027

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 54
    new-instance p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
