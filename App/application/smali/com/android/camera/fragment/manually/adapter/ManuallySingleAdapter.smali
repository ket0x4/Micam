.class public Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ManuallySingleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
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

.field private mItemWidth:I

.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 35
    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentMode:I

    .line 36
    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    .line 37
    iput p4, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mItemWidth:I

    .line 39
    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 56
    iget-object v0, p2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 58
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f09007f

    .line 61
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090080

    .line 62
    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f090081

    .line 63
    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget p1, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, -0xff5701

    goto :goto_0

    :cond_0
    const p0, -0x4c000001

    .line 75
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentMode:I

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 101
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0018

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ManuallySingleAdapter;->getItemCount()I

    move-result p0

    div-int/2addr v0, p0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    new-instance p0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
