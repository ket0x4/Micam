.class public Lcom/android/camera/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# instance fields
.field private mHintView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;
    .locals 2

    const v0, 0x7f090094

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 56
    sget-boolean v0, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    sget v1, Lcom/android/camera/Util;->sNotchHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 61
    :cond_0
    new-instance v0, Lcom/android/camera/OnScreenHint;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenHint;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f090087

    .line 62
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    return-void
.end method

.method public getHintViewVisibility()I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    return p0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 68
    iget-object p0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    const-string v0, "This OnScreenHint was not created with OnScreenHint.makeText()"

    if-eqz p0, :cond_1

    const v1, 0x7f090087

    .line 72
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public show()V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    return-void
.end method
