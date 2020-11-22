.class public Lcom/android/camera/fragment/beauty/SingleCheckAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SingleCheckAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;,
        Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mColorNormal:I

.field private mColorSelected:I

.field private mContext:Landroid/content/Context;

.field private mEnableClick:Z

.field private mFloatEvaluator:Landroid/animation/FloatEvaluator;

.field private mItemHorizontalMargin:I

.field private mPreSelectedItem:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedItem:I

.field private mSingleCheckList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    .line 24
    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    .line 25
    iput v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    .line 42
    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060006

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mColorNormal:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060007

    .line 47
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mColorSelected:I

    .line 48
    iput p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    .line 50
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 51
    new-instance p2, Landroid/animation/FloatEvaluator;

    invoke-direct {p2}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    .line 52
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mItemHorizontalMargin:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mColorSelected:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mColorNormal:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mPreSelectedItem:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/animation/FloatEvaluator;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mFloatEvaluator:Landroid/animation/FloatEvaluator;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 59
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onBindViewHolder(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;I)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSingleCheckList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;

    .line 74
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->setDateToView(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;
    .locals 2

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/high16 v0, 0x7f0b0000

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    invoke-direct {p2, p0, p1, p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;-><init>(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)V

    return-object p2
.end method

.method public onItemHolderClick(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;)V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 91
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 92
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    .line 91
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mEnableClick:Z

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->mSelectedItem:I

    return-void
.end method
