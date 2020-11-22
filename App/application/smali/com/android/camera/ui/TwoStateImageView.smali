.class public Lcom/android/camera/ui/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# instance fields
.field private final DISABLED_ALPHA:F

.field private mFilterEnabled:Z

.field private mFilterInPressState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3ecccccd    # 0.4f

    .line 27
    iput p1, p0, Lcom/android/camera/ui/TwoStateImageView;->DISABLED_ALPHA:F

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    return-void
.end method

.method public enablePressFilter(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 42
    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_1
    return-void
.end method
