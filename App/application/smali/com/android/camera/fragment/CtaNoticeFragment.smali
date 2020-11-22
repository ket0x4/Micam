.class public Lcom/android/camera/fragment/CtaNoticeFragment;
.super Landroid/app/DialogFragment;
.source "CtaNoticeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/CtaNoticeFragment$Licence;,
        Lcom/android/camera/fragment/CtaNoticeFragment$CTA;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static buildUserNotice(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0486

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0487

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 106
    invoke-virtual {v0, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/android/camera/fragment/CtaNoticeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/CtaNoticeFragment$3;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v3, Lcom/android/camera/fragment/CtaNoticeFragment$4;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/CtaNoticeFragment$4;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 125
    new-instance v5, Lcom/android/camera/ui/UrlSpan;

    invoke-direct {v5, v0}, Lcom/android/camera/ui/UrlSpan;-><init>(Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    const/16 v1, 0x21

    .line 125
    invoke-virtual {p0, v5, v4, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 130
    new-instance v0, Lcom/android/camera/ui/UrlSpan;

    invoke-direct {v0, v3}, Lcom/android/camera/ui/UrlSpan;-><init>(Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;)V

    .line 132
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    .line 130
    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static checkCta(Landroid/app/FragmentManager;)Z
    .locals 2

    .line 56
    invoke-static {}, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/camera/fragment/CtaNoticeFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/CtaNoticeFragment;-><init>()V

    const-string v1, "CtaNoticeFragment"

    .line 58
    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 72
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f0488

    invoke-static {p1, v0}, Lcom/android/camera/fragment/CtaNoticeFragment;->buildUserNotice(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 75
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0489

    .line 76
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    new-instance p1, Lcom/android/camera/fragment/CtaNoticeFragment$2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/CtaNoticeFragment$2;-><init>(Lcom/android/camera/fragment/CtaNoticeFragment;)V

    const v1, 0x7f0f0485

    .line 78
    invoke-virtual {v0, v1, p1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    new-instance p1, Lcom/android/camera/fragment/CtaNoticeFragment$1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/CtaNoticeFragment$1;-><init>(Lcom/android/camera/fragment/CtaNoticeFragment;)V

    const/high16 v1, 0x1040000

    .line 83
    invoke-virtual {v0, v1, p1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f0f00db

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p0}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 98
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lmiui/app/AlertDialog;

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 99
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
