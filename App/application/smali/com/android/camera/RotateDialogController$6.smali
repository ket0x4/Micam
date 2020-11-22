.class Lcom/android/camera/RotateDialogController$6;
.super Landroid/text/style/ClickableSpan;
.source "RotateDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/RotateDialogController;->showSystemChoiceDialog(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$startFromSecureKeyguard:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/camera/RotateDialogController$6;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/camera/RotateDialogController$6;->val$startFromSecureKeyguard:Z

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/android/camera/RotateDialogController$6;->val$context:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/camera/RotateDialogController$6;->val$startFromSecureKeyguard:Z

    invoke-static {p1, p0}, Lcom/android/camera/ActivityLauncher;->launchPrivacyPolicyWebpage(Landroid/content/Context;Z)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 227
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 228
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$6;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x1060000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
