.class public Lcom/android/camera/fragment/top/LastAnimationComponent;
.super Ljava/lang/Object;
.source "LastAnimationComponent.java"


# instance fields
.field public mAnchorView:Landroid/view/View;

.field private mExpandOffset:I

.field private mGravity:I

.field public mHidedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mQuartEaseIn:Landroid/view/animation/Interpolator;

.field private mQuartEaseOut:Landroid/view/animation/Interpolator;

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field public mReverseLeft:I

.field public mReverseRecyclerViewLeft:I

.field private mShowDelay:I

.field public mShown:Z

.field private mTargetType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lmiui/view/animation/QuarticEaseInInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuarticEaseInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseIn:Landroid/view/animation/Interpolator;

    .line 61
    new-instance v0, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public hideOtherViews(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    .line 186
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    .line 192
    iput p3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mTargetType:I

    .line 193
    iget-object p3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    if-nez p3, :cond_1

    .line 194
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 198
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 200
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    goto :goto_1

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 214
    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 215
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    const-wide/16 v2, 0x0

    .line 216
    invoke-virtual {p3, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 217
    iget v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    if-lez v0, :cond_5

    const-wide/16 v2, 0x8c

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x118

    :goto_2
    invoke-virtual {p3, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 218
    invoke-virtual {p3, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mExpandOffset:I

    int-to-float v0, v0

    .line 219
    invoke-virtual {p3, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationXBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 220
    iget v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseIn:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {p3, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 221
    invoke-virtual {p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public reverse(ZI)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 77
    iget v1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mTargetType:I

    if-eq p2, v1, :cond_0

    return v0

    .line 80
    :cond_0
    iget-boolean p2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    if-nez p2, :cond_1

    return v0

    .line 84
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShown:Z

    .line 86
    iget-object p2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    const-wide/16 v0, 0x118

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    .line 87
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 95
    invoke-static {v6, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 96
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 97
    invoke-virtual {v6, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 98
    invoke-virtual {v6, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/high16 v7, 0x3f800000    # 1.0f

    .line 99
    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 100
    invoke-virtual {v6, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v7, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 101
    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 102
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {v6, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 107
    invoke-static {v6}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object p2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 112
    iput-object v4, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mHidedViews:Ljava/util/List;

    .line 116
    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    .line 118
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    iget v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    iget-object v7, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    .line 119
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p2, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 120
    invoke-virtual {p2, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 121
    invoke-virtual {p2, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 122
    invoke-virtual {p2, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 123
    invoke-virtual {p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 126
    :cond_5
    iget v6, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {p2, v6}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 128
    :goto_1
    iput-object v4, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    :cond_6
    if-eqz p1, :cond_7

    .line 133
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 135
    invoke-virtual {p1, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget p2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    iget-object v2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 136
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object p2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 138
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance p2, Lcom/android/camera/fragment/top/LastAnimationComponent$1;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/top/LastAnimationComponent$1;-><init>(Lcom/android/camera/fragment/top/LastAnimationComponent;)V

    .line 139
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 147
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    .line 149
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 150
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget p2, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 151
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 152
    iput-object v4, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public setExpandGravity(I)V
    .locals 1

    .line 65
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mGravity:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 p1, -0xc8

    .line 67
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mExpandOffset:I

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    .line 70
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mExpandOffset:I

    const/16 p1, 0x8c

    .line 71
    iput p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    :goto_0
    return-void
.end method

.method public showExtraView(II)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    int-to-float p1, p1

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 175
    iget-object p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    int-to-long v0, v0

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 177
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    int-to-float p2, p2

    .line 178
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const-wide/16 v0, 0x118

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object p0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 180
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 181
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public translateAnchorView(I)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-float p1, p1

    .line 164
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget p1, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mShowDelay:I

    int-to-long v1, p1

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const-wide/16 v1, 0x118

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object p0, p0, Lcom/android/camera/fragment/top/LastAnimationComponent;->mQuartEaseOut:Landroid/view/animation/Interpolator;

    .line 167
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 168
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
