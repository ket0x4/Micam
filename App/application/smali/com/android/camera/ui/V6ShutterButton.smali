.class public Lcom/android/camera/ui/V6ShutterButton;
.super Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.source "V6ShutterButton.java"


# instance fields
.field private mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

.field private mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isPressed()Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 20
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onFinishInflate()V

    const v0, 0x7f090112

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButtonInternal;

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    const v0, 0x7f090111

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 25
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 24
    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setRadius(II)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    return-void
.end method
