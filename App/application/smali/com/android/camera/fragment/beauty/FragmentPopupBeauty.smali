.class public Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPopupBeauty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBeautyRecording;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mIconBeauty:Landroid/view/View;

.field private mIconSticker:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf9

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b001b

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v0, 0x7f090063

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    const v0, 0x7f090061

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->provideAnimateElement(ILjava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090061

    const/16 v1, 0xa0

    if-eq p1, v0, :cond_3

    const v0, 0x7f090063

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x4

    .line 144
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x2

    .line 152
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 156
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    const/16 v0, 0xa3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez p2, :cond_3

    if-ne p1, v1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 117
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 120
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    const/4 v2, 0x3

    if-ne p1, v1, :cond_4

    .line 124
    new-instance p1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-direct {p1, v1, v2}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_4
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconSticker:Landroid/view/View;

    invoke-direct {p1, v1, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;->mIconBeauty:Landroid/view/View;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/16 p0, 0xf0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    .line 191
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method
