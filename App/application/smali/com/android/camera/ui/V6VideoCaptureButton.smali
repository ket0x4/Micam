.class public Lcom/android/camera/ui/V6VideoCaptureButton;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6VideoCaptureButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 48
    iget-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f090118

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onFinishInflate()V

    .line 23
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 p1, 0x8

    .line 33
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
