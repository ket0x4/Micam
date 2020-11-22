.class public Lcom/android/camera/ui/CameraRootView;
.super Landroid/widget/FrameLayout;
.source "CameraRootView.java"


# instance fields
.field private mDisableTouchevt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 18
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 23
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableTouchEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    return-void
.end method
