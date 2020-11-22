.class Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;
.super Ljava/lang/Object;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMiddleX:I

.field private mTouchDownX:F

.field final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 189
    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    .line 191
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mMiddleX:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 195
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$400(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 199
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    goto :goto_0

    .line 201
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    .line 203
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 204
    iget p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mMiddleX:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 205
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$500(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Lcom/android/camera/ui/HorizontalSlideView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/HorizontalSlideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3

    .line 208
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mMiddleX:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    sub-float/2addr v0, v1

    add-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 209
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$500(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Lcom/android/camera/ui/HorizontalSlideView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalSlideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 210
    iget-object p0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$600(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-interface {p0, v2, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 215
    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mMiddleX:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    sub-float/2addr v4, v5

    add-float/2addr p1, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2, p1, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 216
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$500(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Lcom/android/camera/ui/HorizontalSlideView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/HorizontalSlideView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 217
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$600(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/View$OnTouchListener;

    move-result-object p1

    invoke-interface {p1, v2, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 218
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$402(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)Z

    .line 219
    iput v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->mTouchDownX:F

    :goto_0
    return v3
.end method
