.class public Lcom/android/camera/ui/V6PauseRecordingButton;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6PauseRecordingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const v2, 0x7f090119

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 40
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
