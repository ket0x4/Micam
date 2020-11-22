.class public Lcom/android/camera/ui/SettingDismissButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "SettingDismissButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/camera/ui/SettingDismissButton;->mVisible:Z

    .line 17
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 26
    iget-boolean p1, p0, Lcom/android/camera/ui/SettingDismissButton;->mVisible:Z

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/SettingDismissButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v1, 0x0

    const v2, 0x7f090037

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingDismissButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
