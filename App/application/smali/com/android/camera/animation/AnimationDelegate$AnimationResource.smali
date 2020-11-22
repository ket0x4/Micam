.class public interface abstract Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
.super Ljava/lang/Object;
.source "AnimationDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/animation/AnimationDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationResource"
.end annotation


# virtual methods
.method public abstract canProvide()Z
.end method

.method public abstract isEnableClick()Z
.end method

.method public abstract notifyAfterFrameAvailable(I)V
.end method

.method public abstract notifyDataChanged(II)V
.end method

.method public abstract provideAnimateElement(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract provideRotateItem(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setClickEnable(Z)V
.end method
