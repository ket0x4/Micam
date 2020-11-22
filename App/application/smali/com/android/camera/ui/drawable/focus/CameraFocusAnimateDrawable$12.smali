.class Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->start3ALockSuccessAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 578
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;

    move-result-object p1

    const v0, 0xffd322

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 579
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 580
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$900(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 581
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    .line 582
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 583
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method
