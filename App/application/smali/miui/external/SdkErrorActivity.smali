.class public Lmiui/external/SdkErrorActivity;
.super Landroid/app/Activity;
.source "SdkErrorActivity.java"

# interfaces
.implements Lmiui/external/SdkConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/external/SdkErrorActivity$SdkDialogFragment;
    }
.end annotation


# instance fields
.field private mDismissListener:Landroid/content/DialogInterface$OnClickListener;

.field private mLanguage:Ljava/lang/String;

.field private mUpdateListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lmiui/external/SdkErrorActivity$1;

    invoke-direct {v0, p0}, Lmiui/external/SdkErrorActivity$1;-><init>(Lmiui/external/SdkErrorActivity;)V

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    new-instance v0, Lmiui/external/SdkErrorActivity$2;

    invoke-direct {v0, p0}, Lmiui/external/SdkErrorActivity$2;-><init>(Lmiui/external/SdkErrorActivity;)V

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->mUpdateListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->createUpdateDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lmiui/external/SdkErrorActivity;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->updateSdk()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->createUpdateSuccessfulDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->createUpdateFailedDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private createDoubleActionDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 131
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    .line 132
    invoke-virtual {p0, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    .line 133
    invoke-virtual {p0, p1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1080027

    .line 134
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private createGenericErrorDialog()Landroid/app/Dialog;
    .locals 3

    .line 142
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUI SDK\u53d1\u751f\u9519\u8bef"

    const-string v1, "\u8bf7\u91cd\u65b0\u5b89\u88c5MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    goto :goto_0

    :cond_0
    const-string v0, "MIUI SDK encounter errors"

    const-string v1, "Please re-install MIUI SDK and then re-run this application."

    .line 149
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1, v2}, Lmiui/external/SdkErrorActivity;->createSingleActionDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private createLowSdkVersionDialog()Landroid/app/Dialog;
    .locals 4

    .line 168
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->supportUpdateSdk()Z

    move-result v0

    const-string v1, "MIUI SDK\u7248\u672c\u8fc7\u4f4e"

    const-string v2, "MIUI SDK too old"

    if-nez v0, :cond_1

    .line 169
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmiui/external/SdkErrorActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u5148\u5347\u7ea7MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    goto :goto_0

    :cond_0
    const-string v0, "Please upgrade MIUI SDK and then re-run this application."

    move-object v1, v2

    .line 176
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->createSingleActionDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 178
    :cond_1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmiui/external/SdkErrorActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8bf7\u5148\u5347\u7ea7MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002\u662f\u5426\u73b0\u5728\u5347\u7ea7\uff1f"

    goto :goto_1

    :cond_2
    const-string v0, "Please upgrade MIUI SDK and then re-run this application. Upgrade now?"

    move-object v1, v2

    .line 185
    :goto_1
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->mUpdateListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lmiui/external/SdkErrorActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2, v3}, Lmiui/external/SdkErrorActivity;->createDoubleActionDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private createNoSdkDialog()Landroid/app/Dialog;
    .locals 3

    .line 155
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6ca1\u6709\u627e\u5230MIUI SDK"

    const-string v1, "\u8bf7\u5148\u5b89\u88c5MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    goto :goto_0

    :cond_0
    const-string v0, "MIUI SDK not found"

    const-string v1, "Please install MIUI SDK and then re-run this application."

    .line 162
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1, v2}, Lmiui/external/SdkErrorActivity;->createSingleActionDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private createSingleActionDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    .line 121
    invoke-virtual {p0, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1080027

    .line 122
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private createUpdateDialog()Landroid/app/Dialog;
    .locals 4

    .line 192
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUI SDK\u6b63\u5728\u66f4\u65b0"

    const-string v1, "\u8bf7\u7a0d\u5019..."

    goto :goto_0

    :cond_0
    const-string v0, "MIUI SDK updating"

    const-string v1, "Please wait..."

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method private createUpdateFailedDialog()Landroid/app/Dialog;
    .locals 3

    .line 218
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUI SDK\u66f4\u65b0\u5931\u8d25"

    const-string v1, "\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    goto :goto_0

    :cond_0
    const-string v0, "MIUI SDK update failed"

    const-string v1, "Please try it later."

    .line 225
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1, v2}, Lmiui/external/SdkErrorActivity;->createSingleActionDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private createUpdateSuccessfulDialog()Landroid/app/Dialog;
    .locals 3

    .line 205
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MIUI SDK\u66f4\u65b0\u5b8c\u6210"

    const-string v1, "\u8bf7\u91cd\u65b0\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    goto :goto_0

    :cond_0
    const-string v0, "MIUI SDK updated"

    const-string v1, "Please re-run this application."

    .line 212
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->mDismissListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1, v2}, Lmiui/external/SdkErrorActivity;->createSingleActionDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private supportUpdateSdk()Z
    .locals 5

    const/4 p0, 0x0

    .line 231
    :try_start_0
    invoke-static {}, Lmiui/external/SdkEntranceHelper;->getSdkEntrance()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "supportUpdate"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    aput-object v4, v3, p0

    .line 232
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p0

    .line 233
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p0
.end method

.method private updateSdk()Z
    .locals 6

    const/4 p0, 0x0

    .line 245
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    invoke-static {}, Lmiui/external/SdkEntranceHelper;->getSdkEntrance()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "update"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, p0

    .line 248
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, p0

    .line 249
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 247
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x1030055

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/external/SdkErrorActivity;->mLanguage:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.miui.sdk.error"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lmiui/external/SdkConstants$SdkError;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 43
    sget-object p1, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    .line 47
    :cond_1
    sget-object v0, Lmiui/external/SdkErrorActivity$3;->$SwitchMap$miui$external$SdkConstants$SdkError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 55
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->createGenericErrorDialog()Landroid/app/Dialog;

    move-result-object p1

    goto :goto_1

    .line 52
    :cond_2
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->createLowSdkVersionDialog()Landroid/app/Dialog;

    move-result-object p1

    goto :goto_1

    .line 49
    :cond_3
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->createNoSdkDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 58
    :goto_1
    new-instance v0, Lmiui/external/SdkErrorActivity$SdkDialogFragment;

    invoke-direct {v0, p0, p1}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "SdkErrorPromptDialog"

    invoke-virtual {v0, p0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
