.class Lcom/android/camera/ui/StereoButton$1;
.super Ljava/lang/Object;
.source "StereoButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/StereoButton;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/StereoButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/StereoButton;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$1;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$1;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$1;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0}, Lcom/android/camera/ui/StereoButton;->access$000(Lcom/android/camera/ui/StereoButton;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$1;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$1;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0}, Lcom/android/camera/ui/StereoButton;->access$100(Lcom/android/camera/ui/StereoButton;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 314
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton$1;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
