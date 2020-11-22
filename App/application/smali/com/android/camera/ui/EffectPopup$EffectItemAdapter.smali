.class public Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectItemAdapter"
.end annotation


# instance fields
.field protected mEffectItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 602
    iput-object p3, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mEffectItem:Ljava/util/List;

    .line 603
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mEffectItem:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 626
    check-cast p1, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 627
    iget-object p0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 628
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->bindEffectIndex(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 611
    invoke-static {}, Lcom/android/camera/Device;->isSupportedDynamicEffectPopup()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 612
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0006

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 613
    new-instance p2, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V

    goto :goto_0

    .line 615
    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0008

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 616
    new-instance p2, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/view/View;)V

    .line 619
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object p0, p0, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-static {p0}, Lcom/android/camera/ui/EffectPopup;->access$800(Lcom/android/camera/ui/EffectPopup;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 633
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 634
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->resume()V

    .line 635
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 640
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 641
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->pause()V

    .line 642
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
