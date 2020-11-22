.class public abstract Landroid/support/v7/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

.field mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10758
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 10785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10646
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10647
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v1, -0x1

    .line 10648
    iput-wide v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 10649
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 10650
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, 0x0

    .line 10653
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 10655
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 10760
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 10761
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    const/4 v2, 0x0

    .line 10763
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10767
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 10769
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 10773
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10776
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    if-eqz p1, :cond_0

    .line 10789
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-void

    .line 10787
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemView may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 10642
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;
    .locals 0

    .line 10642
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 10642
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return p0
.end method

.method static synthetic access$1302(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z
    .locals 0

    .line 10642
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 10642
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 10642
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 10642
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->onEnteredHiddenState(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 10642
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->onLeftHiddenState(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 11004
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .line 11149
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onEnteredHiddenState(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 11051
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11052
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_0

    .line 11054
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11055
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    :goto_0
    const/4 v0, 0x4

    .line 11057
    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z

    return-void
.end method

.method private onLeftHiddenState(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 11065
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z

    const/4 p1, 0x0

    .line 11067
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 0

    .line 11141
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 10996
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 10997
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 10998
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 10999
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1

    .line 10991
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    .line 10815
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10816
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    return-void
.end method

.method clearPayload()V
    .locals 1

    .line 11011
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11012
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11014
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 10942
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 10946
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 10793
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 10794
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 10795
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .line 10891
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 10894
    :cond_0
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method public final getItemId()J
    .locals 2

    .line 10919
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 0

    .line 10926
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return p0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 10865
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 0

    .line 10909
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return p0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11018
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11019
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11024
    :cond_0
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object p0

    .line 11021
    :cond_1
    :goto_0
    sget-object p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0

    .line 11027
    :cond_2
    sget-object p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 0

    .line 10975
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 10983
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isBound()Z
    .locals 1

    .line 10967
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInvalid()Z
    .locals 0

    .line 10959
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 11132
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11133
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRemoved()Z
    .locals 0

    .line 10971
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isScrap()Z
    .locals 0

    .line 10930
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isTmpDetached()Z
    .locals 0

    .line 10979
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isUpdated()Z
    .locals 0

    .line 11153
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method needsUpdate()Z
    .locals 0

    .line 10963
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method offsetPosition(IZ)V
    .locals 2

    .line 10799
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10800
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10802
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 10803
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    .line 10806
    iget p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10808
    :cond_2
    iget p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10809
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10810
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 11032
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, -0x1

    .line 11033
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11034
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v2, -0x1

    .line 11035
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11036
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11037
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v2, 0x0

    .line 11038
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 11039
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 11040
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 11041
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11042
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11043
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 10820
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10821
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2

    .line 10987
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 11107
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11108
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 11109
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "View"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 11117
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 11118
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez p1, :cond_3

    .line 11119
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V
    .locals 0

    .line 10954
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 10955
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return-void
.end method

.method shouldIgnore()Z
    .locals 0

    .line 10826
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 11072
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11073
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11075
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " scrap "

    .line 11076
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v1, :cond_0

    const-string v1, "[changeScrap]"

    goto :goto_0

    :cond_0
    const-string v1, "[attachedScrap]"

    .line 11077
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11079
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11080
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11081
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11082
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11083
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11084
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11085
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11086
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11088
    :cond_9
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, " no parent"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string p0, "}"

    .line 11089
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11090
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unScrap()V
    .locals 1

    .line 10934
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 0

    .line 10938
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
