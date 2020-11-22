.class Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SingleCheckAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/SingleCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleCheckViewHolder"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

.field private mBase:Lcom/android/camera/ui/ColorImageView;

.field private mText:Lcom/android/camera/ui/ColorImageView;

.field final synthetic this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)V
    .locals 1

    .line 102
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    .line 103
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    iput-object p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    const p3, 0x7f0900cb

    .line 106
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/camera/ui/ColorImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mText:Lcom/android/camera/ui/ColorImageView;

    const p3, 0x7f0900ca

    .line 107
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/camera/ui/ColorImageView;

    iput-object p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    .line 108
    iget-object p3, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    .line 109
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 111
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 112
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private animateIn(Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/ColorImageView;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 185
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    new-instance v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$3;-><init>(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/ColorImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateOut(Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/ColorImageView;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 170
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    new-instance v1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder$2;-><init>(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/ColorImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 138
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$602(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;I)I

    .line 142
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$102(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;I)I

    .line 143
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$700(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    .line 144
    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$600(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    .line 145
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$700(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    .line 146
    invoke-static {v1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;

    .line 148
    iget-object v1, p1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    iget-object p1, p1, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mText:Lcom/android/camera/ui/ColorImageView;

    invoke-direct {p0, v1, p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->animateOut(Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/ColorImageView;)V

    .line 149
    iget-object p1, v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, v0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mText:Lcom/android/camera/ui/ColorImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->animateIn(Lcom/android/camera/ui/ColorImageView;Lcom/android/camera/ui/ColorImageView;)V

    .line 151
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->onItemHolderClick(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;)V

    return-void
.end method

.method public setDateToView(Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mText:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;->getTextResource()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 117
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mText:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 118
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mBase:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$200(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$300(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 119
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_3

    .line 121
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mText:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 122
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f0f0009

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 123
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f0f000a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->mText:Lcom/android/camera/ui/ColorImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f0f0038

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 127
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SingleCheckAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/SingleCheckAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/SingleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/SingleCheckAdapter;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f0f001b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_4
    return-void
.end method
