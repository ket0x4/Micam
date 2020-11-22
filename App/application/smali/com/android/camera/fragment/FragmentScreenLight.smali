.class public Lcom/android/camera/fragment/FragmentScreenLight;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentScreenLight.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ScreenLightProtocol;


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff7

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b001e

    return p0
.end method

.method public hideScreenLight()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_0

    const v0, 0x7f0900c7

    .line 54
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    .line 55
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentScreenLight;->mRootView:Landroid/view/View;

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    .line 67
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0xa2

    aput v1, p0, v0

    .line 75
    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc5

    .line 27
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setScreenLightColor(I)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentScreenLight;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public showScreenLight()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_0

    const v0, 0x7f0900c7

    .line 42
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 43
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc5

    .line 33
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
