.class public abstract Lcom/android/camera/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# instance fields
.field protected mCurrentMode:I

.field protected mDegree:I

.field private mEnableClick:Z

.field private mInModeChanging:Z

.field private mIsFullScreenNavBarHidden:Z

.field private mLaseFragmentInfo:I

.field private mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

.field private mRegistered:Z

.field private mSilentRemove:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/16 v0, 0xf0

    .line 41
    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method


# virtual methods
.method public canProvide()Z
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public abstract getFragmentInto()I
.end method

.method public final getFragmentTag()Ljava/lang/String;
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getLayoutResourceId()I
.end method

.method protected abstract initView(Landroid/view/View;)V
.end method

.method public isEnableClick()Z
    .locals 0

    .line 251
    iget-boolean p0, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return p0
.end method

.method protected isInModeChanging()Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    const/4 p1, 0x0

    .line 261
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    .line 262
    iput p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    if-eqz p2, :cond_0

    .line 110
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->provideEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    if-nez p1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->provideExitAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p3

    check-cast p3, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 83
    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p3

    iput p3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 85
    sget-boolean p3, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    iput-boolean p3, p0, Lcom/android/camera/fragment/BaseFragment;->mIsFullScreenNavBarHidden:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getLayoutResourceId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 139
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterProtocol()V

    .line 145
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeDestroy(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 216
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 217
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mIsFullScreenNavBarHidden:Z

    sget-boolean v1, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    if-eq v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->initView(Landroid/view/View;)V

    .line 220
    :cond_0
    sget-boolean v0, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mIsFullScreenNavBarHidden:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 200
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 201
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 208
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 209
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public pendingGone(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 74
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    return-void
.end method

.method public pendingShow()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 227
    iput-boolean p2, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    .line 229
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    return-void
.end method

.method protected final registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 0

    const/16 p0, 0xab

    .line 183
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 184
    invoke-interface {p0, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public final registerProtocol()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    .line 163
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method

.method public final setDegree(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return-void
.end method

.method public setEnableClickInitValue(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method

.method public setLastFragmentInfo(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    return-void
.end method

.method public setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    return-void
.end method

.method protected final unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 0

    const/16 p0, 0xab

    .line 189
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p0, :cond_0

    .line 193
    invoke-interface {p0, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public final unRegisterProtocol()V
    .locals 1

    .line 168
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method
