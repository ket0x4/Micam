.class public Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;
.super Ljava/lang/Object;
.source "SurfaceCreatedOnSubScribe.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;
.implements Lcom/android/camera/module/loader/SurfaceCreatedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/android/camera/module/loader/SurfaceCreatedCallback;"
    }
.end annotation


# instance fields
.field private singleEmitter:Lio/reactivex/SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->surfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    return-void
.end method


# virtual methods
.method public onGlSurfaceCreated()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    :cond_1
    :goto_0
    return-void
.end method

.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->surfaceStateListener:Lcom/android/camera/module/loader/SurfaceStateListener;

    invoke-interface {v0}, Lcom/android/camera/module/loader/SurfaceStateListener;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    const/4 p0, 0x1

    .line 23
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->singleEmitter:Lio/reactivex/SingleEmitter;

    :goto_0
    return-void
.end method
