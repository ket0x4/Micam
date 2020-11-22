.class Lcom/android/camera/ui/HorizontalSlideView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HorizontalSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalSlideView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalSlideView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$000(Lcom/android/camera/ui/HorizontalSlideView;)Landroid/widget/Scroller;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 38
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$102(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    float-to-int p1, p3

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$900(Lcom/android/camera/ui/HorizontalSlideView;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/camera/ui/HorizontalSlideView;->access$402(Lcom/android/camera/ui/HorizontalSlideView;Z)Z

    .line 51
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$500(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result p1

    iget-object p4, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p4}, Lcom/android/camera/ui/HorizontalSlideView;->access$600(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ne p1, p4, :cond_0

    cmpg-float p1, p3, v1

    if-gez p1, :cond_0

    return v0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$500(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result p1

    iget-object p4, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p4}, Lcom/android/camera/ui/HorizontalSlideView;->access$700(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result p4

    if-ne p1, p4, :cond_1

    cmpl-float p1, p3, v1

    if-lez p1, :cond_1

    return v0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p0}, Lcom/android/camera/ui/HorizontalSlideView;->access$500(Lcom/android/camera/ui/HorizontalSlideView;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->access$800(Lcom/android/camera/ui/HorizontalSlideView;I)V

    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalSlideView$1;->this$0:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-static {p0}, Lcom/android/camera/ui/HorizontalSlideView;->access$200(Lcom/android/camera/ui/HorizontalSlideView;)F

    move-result p0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    invoke-static {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->access$300(Lcom/android/camera/ui/HorizontalSlideView;I)V

    const/4 p0, 0x1

    return p0
.end method
