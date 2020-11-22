.class public Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "FrontRotateNewbieDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public animateOut(I)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/16 p1, 0x190

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->animateOut(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const/16 p1, 0x190

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->animateOut(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090053

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->onBackEvent(I)Z

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0026

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090053

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090052

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 43
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    const/4 p0, 0x0

    .line 47
    invoke-static {p1, p0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 48
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 49
    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance p2, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {p2}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    .line 50
    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 79
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 80
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 81
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x5

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->onBackEvent(I)Z

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 66
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xab

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 73
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
