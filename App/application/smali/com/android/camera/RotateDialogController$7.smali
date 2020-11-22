.class Lcom/android/camera/RotateDialogController$7;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RotateDialogController;->showSystemChoiceDialog(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkrun:Ljava/lang/Runnable;

.field final synthetic val$choice:Landroid/widget/CheckBox;

.field final synthetic val$uncheckrun:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/camera/RotateDialogController$7;->val$choice:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/camera/RotateDialogController$7;->val$checkrun:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/camera/RotateDialogController$7;->val$uncheckrun:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 247
    iget-object p1, p0, Lcom/android/camera/RotateDialogController$7;->val$choice:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$7;->val$checkrun:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 249
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$7;->val$uncheckrun:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 253
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
