.class Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;
.super Ljava/lang/Object;
.source "CameraSnapAnimateDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field final synthetic val$currentMode:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;I)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->val$currentMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$400(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->reverseClock()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 361
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$400(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 362
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    move-result-object p1

    iput-boolean v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 363
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    move-result-object p1

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->val$currentMode:I

    const/16 v2, 0xac

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecordingCircle:Z

    .line 364
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$8;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    return-void
.end method
