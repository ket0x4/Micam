.class Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider$2;
.super Ljava/lang/Object;
.source "BeautyTitleView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;->shrinkAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider$2;->this$0:Lcom/android/camera/ui/BeautyTitleView$ThreeChildAnimationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .line 269
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x4

    .line 263
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 258
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object p0

    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/animation/AnimationMonitor;->animationStart(Ljava/lang/Object;I)V

    return-void
.end method
