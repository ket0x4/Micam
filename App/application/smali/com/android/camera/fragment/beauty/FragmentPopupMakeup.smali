.class public Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentPopupMakeup.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/BaseFragment;",
        "Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mActiveProgress:I

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRTL:Z

.field private mIsShow:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mActiveProgress:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mActiveProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Landroid/widget/SeekBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mIsRTL:Z

    return p0
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/BeautyParameters;->setProgress(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfc

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b001d

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mIsRTL:Z

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 61
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$1;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$3;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 75
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$2;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    .line 76
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mDisposable:Lio/reactivex/disposables/Disposable;

    .line 84
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->getCurrentProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mActiveProgress:I

    const v0, 0x7f090078

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    .line 87
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 88
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mActiveProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;-><init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isShow()Z
    .locals 0

    .line 231
    iget-boolean p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mIsShow:Z

    return p0
.end method

.method public onMakeupItemSelected()V
    .locals 1

    .line 221
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->getCurrentProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

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

    .line 167
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

    .line 180
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x50

    if-ne p1, v1, :cond_4

    .line 187
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-nez p2, :cond_3

    .line 192
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_1

    .line 194
    :cond_3
    new-instance p1, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    .line 198
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_1

    .line 200
    :cond_5
    new-instance p1, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 207
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

    .line 214
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

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb4

    .line 141
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mIsShow:Z

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb4

    .line 148
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 149
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->mIsShow:Z

    return-void
.end method
