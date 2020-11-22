.class public Lcom/android/camera/ui/V6ModulePicker;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ModulePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "V6ModulePicker"

.field private static sCurrentModule:I


# instance fields
.field private mEnabled:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 78
    sget-object p1, Lcom/android/camera/ui/V6ModulePicker;->TAG:Ljava/lang/String;

    const-string v0, "ModulePicker onclick"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget p1, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    const v3, 0x7f090105

    const/4 v4, 0x2

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 81
    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
