.class public Lcom/android/camera/animation/AnimationComposite;
.super Ljava/lang/Object;
.source "AnimationComposite.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationComposite"


# instance fields
.field private mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

.field private mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationDisposable:Lio/reactivex/disposables/Disposable;

.field private mCurrentDegree:I

.field private mOrientation:I

.field private mRotationAnimator:Landroid/animation/ValueAnimator;

.field private mStartDegree:I

.field private mTargetDegree:I

.field private resourceSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/animation/AnimationDelegate$AnimationResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 193
    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    .line 194
    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    .line 197
    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Lcom/android/camera/animation/AnimationComposite$1;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/AnimationComposite$1;-><init>(Lcom/android/camera/animation/AnimationComposite;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 57
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    .line 60
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/animation/AnimationComposite;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/animation/AnimationComposite;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/animation/AnimationComposite;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    return p1
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 331
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 335
    invoke-interface {v1, v2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->setClickEnable(Z)V

    .line 337
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyAfterFrameAvailable(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
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

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/AnimationComposite;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 314
    iput-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    .line 320
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 321
    iput-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;IZ)Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 91
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 94
    :goto_1
    invoke-interface {v1, p3, v2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideAnimateElement(ILjava/util/List;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 112
    iget-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_4
    if-eqz p2, :cond_5

    .line 116
    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_3

    .line 118
    :cond_5
    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    .line 122
    :goto_3
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public disposeRotation(I)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v0, 0x168

    if-ltz p1, :cond_0

    .line 206
    rem-int/2addr p1, v0

    goto :goto_0

    :cond_0
    rem-int/2addr p1, v0

    add-int/2addr p1, v0

    .line 207
    :goto_0
    iget v1, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    sub-int v1, p1, v1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 v1, v1, 0x168

    :goto_1
    const/16 v2, 0xb4

    if-le v1, v2, :cond_3

    add-int/lit16 v1, v1, -0x168

    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    .line 219
    :goto_2
    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    .line 220
    iget v4, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    const/4 v5, -0x1

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    if-ne v4, v5, :cond_5

    .line 221
    sget-object p0, Lcom/android/camera/animation/AnimationComposite;->TAG:Ljava/lang/String;

    const-string p1, "Ignore initial portrait state."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    rsub-int p1, p1, 0x168

    .line 225
    rem-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    .line 227
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    .line 229
    :goto_3
    iget-object v6, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 230
    iget-object v6, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 231
    invoke-interface {v6}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    .line 234
    :cond_6
    iget v7, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    invoke-interface {v6, p1, v7}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideRotateItem(Ljava/util/List;I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 238
    :cond_7
    iget v4, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    if-ne v4, v5, :cond_8

    .line 239
    iget v0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    iget v1, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_5

    .line 243
    :cond_8
    iget-object v4, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_e

    .line 244
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 245
    iget v4, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    if-ne v4, v5, :cond_9

    move v4, v3

    :cond_9
    iput v4, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    if-eqz v1, :cond_c

    .line 249
    iget v1, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    if-ne v1, v0, :cond_a

    move v1, v3

    .line 250
    :cond_a
    iget v4, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    move v0, v4

    goto :goto_6

    .line 252
    :cond_c
    iget v1, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    if-nez v1, :cond_d

    move v1, v0

    .line 253
    :cond_d
    iget v4, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-ne v4, v0, :cond_b

    move v0, v3

    .line 255
    :goto_6
    iget-object v4, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v1, v5, v3

    aput v0, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 256
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 258
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/animation/AnimationComposite$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/animation/AnimationComposite$2;-><init>(Lcom/android/camera/animation/AnimationComposite;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_e
    return-void
.end method

.method public notifyAfterFirstFrameArrived(I)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    const/4 v0, 0x0

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 291
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyDataChanged(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->resourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    .line 277
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->isEnableClick()Z

    move-result v2

    if-eq v2, p1, :cond_1

    .line 281
    invoke-interface {v1, p1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->setClickEnable(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
