.class public abstract Lcom/android/camera/fragment/sticker/BaseSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;,
        Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

.field protected mLastSelectedItemPosition:I

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mSelectedItemPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mLastSelectedItemPosition:I

    .line 51
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setSelected(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;Z)V
    .locals 0

    .line 70
    iget-object p0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 71
    iget-object p0, p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->mIVSelected:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected abstract getHolder(Landroid/view/View;)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
.end method

.method public getItemCount()I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getLayoutId()I
.end method

.method public initSelectItem(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->onBindViewHolder(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->onBindViewHolder(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;I)V
    .locals 1

    .line 63
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->setSelected(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;Z)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;->bindView(I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 76
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 77
    iget p3, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->setSelected(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;Z)V

    goto :goto_1

    .line 79
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f09006c

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    .line 86
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 87
    iget v1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    if-eq v1, v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;->onItemSelect(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->setSelectedItemPosition(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 93
    invoke-interface {p0, p1, v0, v1}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;->onItemSelect(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;IZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
    .locals 2

    .line 56
    iget-object p2, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->getHolder(Landroid/view/View;)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;

    move-result-object p0

    return-object p0
.end method

.method public setItemSelectChangeListener(Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mItemSelectChangeListener:Lcom/android/camera/fragment/sticker/BaseSelectAdapter$ItemSelectChangeListener;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1

    .line 32
    iget v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    iput v0, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mLastSelectedItemPosition:I

    .line 33
    iput p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    .line 34
    iget p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mLastSelectedItemPosition:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 35
    iget p1, p0, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;->mSelectedItemPosition:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
