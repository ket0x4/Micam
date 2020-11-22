.class public Lcom/android/camera/ui/TopControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "TopControlPanel.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;


# instance fields
.field public mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

.field public mFlashButton:Lcom/android/camera/ui/FlashButton;

.field public mHdrButton:Lcom/android/camera/ui/HdrButton;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field public mPeakButton:Lcom/android/camera/ui/PeakButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private hideSubViewExcept(Landroid/view/View;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 140
    instance-of v2, v1, Lcom/android/camera/ui/AnimateView;

    if-eqz v2, :cond_0

    .line 141
    check-cast v1, Lcom/android/camera/ui/AnimateView;

    invoke-interface {v1, p2}, Lcom/android/camera/ui/AnimateView;->hide(Z)V

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 70
    move-object v0, p4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x7f090104

    const v2, 0x7f090100

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/TopControlPanel;->hideSubViewExcept(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_4

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/TopControlPanel;->hideSubViewExcept(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->couldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/AnimationImageView;->show(Z)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PeakButton;->couldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6TopTextView;->show(Z)V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/AnimationImageView;->show(Z)V

    .line 88
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/TopControlPanel;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v4, :cond_5

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 89
    invoke-interface/range {v4 .. v9}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090100

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mFlashButton:Lcom/android/camera/ui/FlashButton;

    const v0, 0x7f090104

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HdrButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mHdrButton:Lcom/android/camera/ui/HdrButton;

    const v0, 0x7f0900d7

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SkinBeautyButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mBeautyButton:Lcom/android/camera/ui/SkinBeautyButton;

    const v0, 0x7f090107

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PeakButton;

    iput-object v0, p0, Lcom/android/camera/ui/TopControlPanel;->mPeakButton:Lcom/android/camera/ui/PeakButton;

    return-void
.end method
