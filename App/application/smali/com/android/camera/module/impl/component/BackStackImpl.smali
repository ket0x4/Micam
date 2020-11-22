.class public Lcom/android/camera/module/impl/component/BackStackImpl;
.super Ljava/lang/Object;
.source "BackStackImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BackStack;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mStacks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 25
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;
    .locals 1

    .line 20
    new-instance v0, Lcom/android/camera/module/impl/component/BackStackImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/BackStackImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private final handleBackStack(I)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;

    .line 58
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;->onBackEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleBackStackFromKeyBack()Z
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result p0

    return p0
.end method

.method public handleBackStackFromShutter()Z
    .locals 1

    const/4 v0, 0x3

    .line 67
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result p0

    return p0
.end method

.method public handleBackStackFromTapDown(II)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x2

    .line 80
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result p0

    return p0
.end method

.method public registerProtocol()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 38
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
