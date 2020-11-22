.class public Lcom/android/camera/ui/V6SettingsStatusBar;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6SettingsStatusBar.java"

# interfaces
.implements Lcom/android/camera/ui/MutexView;


# instance fields
.field private mApertureTextView:Landroid/widget/TextView;

.field private mEvTextView:Landroid/widget/TextView;

.field private mZoomTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090047

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Landroid/widget/TextView;

    const v0, 0x7f09012c

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Landroid/widget/TextView;

    const v0, 0x7f090011

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mApertureTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method
