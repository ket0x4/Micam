.class public Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPopupBeautyLevel.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff2

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b001c

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 38
    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0xa7
        0xa1
    .end array-data
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 45
    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0xa8
        0xa2
    .end array-data
.end method
