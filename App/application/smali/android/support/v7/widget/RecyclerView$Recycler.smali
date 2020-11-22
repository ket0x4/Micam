.class public final Landroid/support/v7/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 5591
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5592
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5593
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5595
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 5597
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5598
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    const/4 p1, 0x2

    .line 5600
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5601
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegateOnBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 5993
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5994
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5995
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 5997
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 6000
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x4000

    .line 6001
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6002
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 6003
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object p0

    .line 6002
    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 6009
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6010
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 6015
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 6016
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6017
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 6018
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 6025
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_3

    const/4 p0, 0x0

    .line 6026
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6027
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 6029
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    .line 6030
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6031
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private tryBindViewHolderByDeadline(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIJ)Z
    .locals 9

    .line 5698
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5699
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    .line 5700
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 5701
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-wide v3, v7

    move-wide v5, p4

    .line 5702
    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5706
    :cond_0
    iget-object p4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p4, p4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p4, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 5707
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 5708
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 5709
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->attachAccessibilityDelegateOnBind(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5710
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5711
    iput p3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 3

    .line 6204
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/16 v0, 0x4000

    .line 6205
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 6206
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6207
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6210
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->dispatchViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6212
    :cond_1
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6213
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 5614
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5615
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method clearOldPositions()V
    .locals 4

    .line 6581
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6583
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6584
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6586
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 6588
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6590
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6591
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 6593
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .line 6284
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6285
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 6286
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 5782
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5786
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 5789
    :cond_0
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p0

    return p0

    .line 5783
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5784
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 6435
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 6436
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6438
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 6439
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6441
    :cond_1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    .line 6442
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 6293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 6298
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6299
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 6300
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6305
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6306
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 6307
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 6308
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    .line 6310
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6311
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 6312
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 6539
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 6540
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 6542
    :cond_0
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    return-object p0
.end method

.method getScrapCount()I
    .locals 0

    .line 6276
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 5646
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object p0
.end method

.method getScrapOrCachedViewForId(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 6383
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6385
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6386
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6387
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    .line 6388
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6389
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6398
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const/16 p1, 0xe

    .line 6399
    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    .line 6408
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6409
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6410
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6416
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 6418
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6419
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    .line 6420
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    .line 6422
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    .line 6426
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 6329
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6333
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6334
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 6335
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p0, 0x20

    .line 6336
    invoke-virtual {v3, p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    .line 6342
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6346
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 6347
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 6348
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 6353
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6354
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    const/16 p0, 0x2020

    .line 6355
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    .line 6350
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 6351
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6362
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 6364
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6367
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_6

    if-nez p2, :cond_5

    .line 6369
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 0

    .line 6280
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 5808
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 5812
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 6599
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6601
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 6602
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 6604
    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 6565
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6567
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 6569
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    const/4 v3, 0x0

    .line 6570
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6574
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6576
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_3
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4

    .line 6483
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6485
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 6486
    iget v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    .line 6491
    invoke-virtual {v2, p2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p2

    move v2, v0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    move v0, p2

    .line 6464
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    .line 6466
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_3

    .line 6467
    iget v7, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v7, v0, :cond_3

    if-le v7, v1, :cond_1

    goto :goto_2

    :cond_1
    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    .line 6471
    invoke-virtual {v6, v7, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 6473
    :cond_2
    invoke-virtual {v6, v2, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 4

    add-int v0, p1, p2

    .line 6504
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 6506
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 6508
    iget v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    .line 6514
    invoke-virtual {v2, v3, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1

    :cond_0
    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    .line 6517
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6518
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 0

    .line 6449
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 6450
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 1

    .line 6222
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    .line 6223
    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1202(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;

    const/4 v0, 0x0

    .line 6224
    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1302(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 6225
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6226
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 1

    .line 6070
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6072
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6074
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6075
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6076
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {p0}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_1
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2

    .line 6095
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    .line 6099
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 6100
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3

    .line 6048
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6049
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6050
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6052
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6053
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    .line 6054
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6055
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 6057
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 6109
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 6116
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6122
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6129
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1100(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 6130
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 6132
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 6139
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_5

    .line 6140
    :cond_3
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    .line 6141
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 6146
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6147
    iget v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    .line 6148
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    .line 6153
    :cond_4
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6155
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 6159
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6160
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v3, v2

    .line 6167
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-nez v3, :cond_9

    .line 6171
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    move v1, v2

    .line 6189
    :cond_9
    :goto_5
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    .line 6191
    iput-object p0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    :cond_a
    return-void

    .line 6123
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 6125
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6117
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 6119
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6110
    :cond_d
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6112
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6113
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method scrapView(Landroid/view/View;)V
    .locals 2

    .line 6239
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/16 v0, 0xc

    .line 6240
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6241
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6250
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 6251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    .line 6253
    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 6254
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6242
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6243
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 6245
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 6247
    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 6248
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_17

    .line 5836
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v3, v1, :cond_17

    .line 5844
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 5845
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    move v4, v8

    :goto_0
    if-nez v1, :cond_6

    .line 5850
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5852
    invoke-virtual {v6, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    .line 5857
    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5858
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5859
    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5860
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    .line 5861
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5862
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5864
    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move v4, v7

    :cond_6
    :goto_2
    if-nez v1, :cond_f

    .line 5873
    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v5

    if-ltz v5, :cond_e

    .line 5874
    iget-object v9, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v5, v9, :cond_e

    .line 5880
    iget-object v9, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v9, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    .line 5882
    iget-object v10, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5883
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5887
    iput v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v4, v7

    :cond_7
    if-nez v1, :cond_a

    .line 5891
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    if-eqz v0, :cond_a

    .line 5895
    invoke-virtual {v0, v6, v3, v9}, Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Landroid/support/v7/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5897
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 5902
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 5903
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 5905
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5899
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 5901
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-nez v1, :cond_b

    .line 5914
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 5916
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5917
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v0, :cond_b

    .line 5918
    invoke-direct {v6, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_b
    if-nez v1, :cond_f

    .line 5923
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_c

    .line 5924
    iget-object v10, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    .line 5925
    invoke-virtual/range {v10 .. v15}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v5

    if-nez v5, :cond_c

    return-object v2

    .line 5929
    :cond_c
    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v2, v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5930
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$1000()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5932
    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 5934
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5938
    :cond_d
    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    .line 5939
    iget-object v5, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    move-object v10, v2

    goto :goto_4

    .line 5875
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5877
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v10, v1

    :goto_4
    move v9, v4

    if-eqz v9, :cond_10

    .line 5949
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x2000

    .line 5950
    invoke-virtual {v10, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5951
    invoke-virtual {v10, v8, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5952
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_10

    .line 5954
    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    .line 5956
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5957
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 5956
    invoke-virtual {v2, v1, v10, v0, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 5958
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v10, v0}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5963
    :cond_10
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5965
    iput v3, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_5

    .line 5966
    :cond_11
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    :goto_5
    move v0, v8

    goto :goto_7

    .line 5972
    :cond_13
    :goto_6
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p1

    move-wide/from16 v4, p3

    .line 5973
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v0

    .line 5976
    :goto_7
    iget-object v1, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_14

    .line 5979
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 5980
    iget-object v2, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 5981
    :cond_14
    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 5982
    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 5983
    iget-object v2, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 5985
    :cond_15
    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 5987
    :goto_8
    iput-object v10, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v9, :cond_16

    if-eqz v0, :cond_16

    goto :goto_9

    :cond_16
    move v7, v8

    .line 5988
    :goto_9
    iput-boolean v7, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-object v10

    .line 5837
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5838
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 5839
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 6265
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1300(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6266
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6268
    :cond_0
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    .line 6270
    invoke-static {p1, p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1202(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;

    const/4 p0, 0x0

    .line 6271
    invoke-static {p1, p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1302(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 6272
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method updateViewCacheSize()V
    .locals 3

    .line 5629
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5630
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 5634
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v1, v2, :cond_1

    .line 5635
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method validateViewHolderForOffsetPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 5660
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5665
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    return p0

    .line 5667
    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 5671
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5673
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 5674
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 5678
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 5679
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    .line 5668
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    .line 5669
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method viewRangeUpdate(II)V
    .locals 3

    add-int/2addr p2, p1

    .line 6547
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6549
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_0

    goto :goto_1

    .line 6554
    :cond_0
    iget v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    const/4 v2, 0x2

    .line 6556
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6557
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
