.class Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;
.super Ljava/lang/Object;
.source "FragmentPopupMakeup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return v0

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 116
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$200(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 117
    invoke-virtual {v3, p1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$200(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result p1

    .line 124
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$300(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Z

    move-result v2

    if-eqz v2, :cond_2

    int-to-float v2, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr v2, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    :goto_0
    int-to-float p1, p1

    div-float/2addr v2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    float-to-int p1, v2

    const/16 p2, 0x64

    .line 126
    invoke-static {p1, v0, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 127
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$200(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return v1
.end method
