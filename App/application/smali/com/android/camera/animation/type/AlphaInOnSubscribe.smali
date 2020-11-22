.class public Lcom/android/camera/animation/type/AlphaInOnSubscribe;
.super Lcom/android/camera/animation/type/BaseOnSubScribe;
.source "AlphaInOnSubscribe.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static directSetResult(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setAnimateViewVisible(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 25
    iget-object p0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object p0
.end method
