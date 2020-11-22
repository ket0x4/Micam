.class public Lmiui/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private P:Lmiui/app/AlertControllerWrapper$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-static {p1, v0}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lmiui/app/AlertControllerWrapper$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lmiui/app/AlertControllerWrapper$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    .line 306
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lmiui/app/AlertControllerWrapper$AlertParams;->mEditMode:Z

    .line 307
    iput p2, p0, Lmiui/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Lmiui/app/AlertDialog;
    .locals 3

    .line 900
    new-instance v0, Lmiui/app/AlertDialog;

    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiui/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 901
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    invoke-static {v0}, Lmiui/app/AlertDialog;->access$000(Lmiui/app/AlertDialog;)Lmiui/app/AlertControllerWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertControllerWrapper$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 902
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 903
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 904
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 906
    :cond_0
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 907
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lmiui/app/AlertControllerWrapper$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 908
    iget-object v1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lmiui/app/AlertControllerWrapper$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 909
    iget-object p0, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-object p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_1

    .line 910
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 383
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iput-boolean p1, v0, Lmiui/app/AlertControllerWrapper$AlertParams;->mIsChecked:Z

    .line 384
    iput-object p2, v0, Lmiui/app/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;
    .locals 1

    .line 373
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 463
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 464
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 437
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 438
    iget-object p1, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lmiui/app/AlertDialog$Builder;
    .locals 2

    .line 328
    iget-object v0, p0, Lmiui/app/AlertDialog$Builder;->P:Lmiui/app/AlertControllerWrapper$AlertParams;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
