.class public Lcom/android/camera/ui/CaptureControlPanel;
.super Landroid/widget/RelativeLayout;
.source "CaptureControlPanel.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mCancel:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    if-ne v0, p1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v2, 0x0

    const v3, 0x7f09002a

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v8, 0x1

    const v9, 0x7f09002a

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 32
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900fb

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    const v0, 0x7f0900fa

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancel:Lcom/android/camera/ui/V6BottomAnimationImageView;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancel:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 101
    iget-object p0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancel:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method
