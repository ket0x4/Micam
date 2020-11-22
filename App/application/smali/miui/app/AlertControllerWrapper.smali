.class public Lmiui/app/AlertControllerWrapper;
.super Lcom/android/internal/app/AlertController;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/AlertControllerWrapper$AlertParams;
    }
.end annotation


# instance fields
.field mAlertControllerImpl:Lcom/android/internal/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 37
    invoke-static {p1, p2, p3}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object p1

    iput-object p1, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    .line 96
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 91
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public installContent()V
    .locals 0

    .line 42
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->installContent()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 101
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 106
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 82
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lmiui/app/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/app/AlertController;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    return-void
.end method
