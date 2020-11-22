.class public Lcom/android/camera/animation/type/TranslateXOnSubscribe;
.super Lcom/android/camera/animation/type/BaseOnSubScribe;
.source "TranslateXOnSubscribe.java"


# instance fields
.field private mDistanceX:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;-><init>(Landroid/view/View;)V

    .line 16
    iput p2, p0, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->mDistanceX:I

    return-void
.end method

.method public static directSetResult(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setAnimateViewVisible(Landroid/view/View;I)V

    int-to-float p1, p1

    .line 28
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method protected getAnimation()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setAnimateViewVisible(Landroid/view/View;I)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mAniView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->mDistanceX:I

    int-to-float p0, p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object v0
.end method
