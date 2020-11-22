.class Lcom/android/camera/fragment/CtaNoticeFragment$3;
.super Ljava/lang/Object;
.source "CtaNoticeFragment.java"

# interfaces
.implements Lcom/android/camera/ui/UrlSpan$UrlSpanOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/CtaNoticeFragment;->buildUserNotice(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/camera/fragment/CtaNoticeFragment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/android/camera/fragment/CtaNoticeFragment$3;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/fragment/CtaNoticeFragment$Licence;->getUserAgreementIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
