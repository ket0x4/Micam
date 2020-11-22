.class public Lcom/android/camera/animation/type/SlideInOnSubscribe;
.super Lcom/android/camera/animation/type/BaseOnSubScribe;
.source "SlideInOnSubscribe.java"


# instance fields
.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;-><init>(Landroid/view/View;)V

    .line 18
    iput p2, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mGravity:I

    return-void
.end method

.method public static directSetResult(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x0

    .line 59
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 60
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 61
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 p1, 0x0

    .line 62
    invoke-static {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setAnimateViewVisible(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 6

    .line 24
    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 30
    iget-object v2, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 32
    iget v3, p0, Lcom/android/camera/animation/type/SlideInOnSubscribe;->mGravity:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/16 v0, 0x30

    if-eq v3, v0, :cond_1

    const/16 v0, 0x50

    if-eq v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    neg-int v0, v2

    goto :goto_0

    :cond_2
    neg-int v0, v0

    :cond_3
    move v5, v1

    move v1, v0

    move v0, v5

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    int-to-float v1, v1

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 48
    iget-object v1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 53
    iget-object p0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 55
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object p0
.end method
