.class Lcom/android/camera/animation/type/BaseOnSubScribe$1;
.super Ljava/lang/Object;
.source "BaseOnSubScribe.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/animation/type/BaseOnSubScribe;->subscribe(Lio/reactivex/CompletableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;


# direct methods
.method constructor <init>(Lcom/android/camera/animation/type/BaseOnSubScribe;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$1;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$1;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$1;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe$1;->this$0:Lcom/android/camera/animation/type/BaseOnSubScribe;

    iget v0, p0, Lcom/android/camera/animation/type/BaseOnSubScribe;->mDurationTime:I

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/animation/AnimationMonitor;->animationStart(Ljava/lang/Object;I)V

    return-void
.end method
