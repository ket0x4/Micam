.class public Lmiui/app/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lmiui/app/AlertControllerWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 94
    invoke-static {p1, p2}, Lmiui/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 95
    new-instance p2, Lmiui/app/AlertControllerWrapper;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lmiui/app/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    return-void
.end method

.method static synthetic access$000(Lmiui/app/AlertDialog;)Lmiui/app/AlertControllerWrapper;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    return-object p0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x1010309

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 134
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_1
    const p1, 0x1030410

    goto :goto_0

    :cond_2
    const p1, 0x1030409

    :goto_0
    return p1
.end method


# virtual methods
.method public getMessageView()Landroid/widget/TextView;
    .locals 0

    .line 193
    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertControllerWrapper;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 267
    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertControllerWrapper;->isChecked()Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {p0}, Lmiui/app/AlertControllerWrapper;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 277
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertControllerWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 272
    iget-object v0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {v0, p1, p2}, Lmiui/app/AlertControllerWrapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p0, p0, Lmiui/app/AlertDialog;->mAlert:Lmiui/app/AlertControllerWrapper;

    invoke-virtual {p0, p1}, Lmiui/app/AlertControllerWrapper;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
