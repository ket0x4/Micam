.class public Lcom/android/camera/ui/PopupMenuItem;
.super Landroid/widget/RelativeLayout;
.source "PopupMenuItem.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final DISABLED_ALPHA:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x3ecccccd    # 0.4f

    .line 8
    iput p1, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3ecccccd    # 0.4f

    .line 8
    iput p1, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3ecccccd    # 0.4f

    .line 8
    iput p1, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 24
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3

    neg-int p1, p1

    if-ltz p1, :cond_0

    .line 30
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRotation()F

    move-result v0

    float-to-int v0, v0

    .line 32
    rem-int/lit16 v1, v0, 0x168

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v1, v1, 0x168

    :goto_1
    sub-int/2addr p1, v1

    if-nez p1, :cond_2

    .line 35
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void

    .line 38
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xb4

    if-le v1, v2, :cond_4

    if-ltz p1, :cond_3

    add-int/lit16 p1, p1, -0x168

    goto :goto_2

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 46
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    add-int/2addr v0, p1

    int-to-float p2, v0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 48
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_3
    return-void
.end method
