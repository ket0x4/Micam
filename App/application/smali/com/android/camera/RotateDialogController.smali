.class public Lcom/android/camera/RotateDialogController;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# direct methods
.method public static showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 1

    .line 167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 171
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_0

    .line 174
    new-instance p0, Lcom/android/camera/RotateDialogController$3;

    invoke-direct {p0, p4}, Lcom/android/camera/RotateDialogController$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    if-eqz p5, :cond_1

    .line 184
    new-instance p0, Lcom/android/camera/RotateDialogController$4;

    invoke-direct {p0, p6}, Lcom/android/camera/RotateDialogController$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-object p0
.end method

.method public static showSystemChoiceDialog(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 5

    .line 203
    new-instance v0, Lcom/android/camera/RotateDialogController$5;

    invoke-direct {v0}, Lcom/android/camera/RotateDialogController$5;-><init>()V

    .line 210
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0050

    const/4 v4, 0x0

    .line 213
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09000b

    .line 214
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 215
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x7f0f0497

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 218
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 219
    new-instance v4, Lcom/android/camera/RotateDialogController$6;

    invoke-direct {v4, p1, p0}, Lcom/android/camera/RotateDialogController$6;-><init>(Landroid/content/Context;Z)V

    .line 230
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x0

    const/16 p3, 0x21

    .line 219
    invoke-virtual {v3, v4, p1, p0, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const p0, 0x7f090128

    .line 231
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p3, 0x1

    .line 232
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 233
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p0, 0x7f09000c

    .line 236
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 237
    invoke-virtual {p0, p4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p5, :cond_0

    .line 244
    new-instance p1, Lcom/android/camera/RotateDialogController$7;

    invoke-direct {p1, p0, p6, p7}, Lcom/android/camera/RotateDialogController$7;-><init>(Landroid/widget/CheckBox;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 261
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-object p0
.end method
