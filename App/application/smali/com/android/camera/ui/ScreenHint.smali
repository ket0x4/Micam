.class public Lcom/android/camera/ui/ScreenHint;
.super Ljava/lang/Object;
.source "ScreenHint.java"


# instance fields
.field private final mActivity:Lcom/android/camera/ActivityBase;

.field private mDialog:Landroid/app/AlertDialog;

.field private mMessageId:I

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J

.field private mSystemChoiceDialog:Landroid/app/AlertDialog;

.field private mTitleId:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ScreenHint;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenHint;->recordLocation(Z)V

    return-void
.end method

.method private recordLocation(Z)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "pref_camera_recordlocation_key"

    .line 78
    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 79
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 80
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    return-void
.end method


# virtual methods
.method public dismissSystemChoiceDialog()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public hideToast()V
    .locals 1

    .line 161
    invoke-static {}, Lcom/android/camera/ui/RotateTextToast;->getInstance()Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    :cond_0
    return-void
.end method

.method public isScreenHintVisible()Z
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/OnScreenHint;->getHintViewVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recordFirstUse(Z)V
    .locals 1

    .line 168
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "pref_camera_first_use_hint_shown_key"

    .line 170
    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v0, "pref_camera_confirm_location_shown_key"

    .line 171
    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 172
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public showConfirmMessage(II)V
    .locals 8

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget v0, p0, Lcom/android/camera/ui/ScreenHint;->mTitleId:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ScreenHint;->mMessageId:I

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/camera/ui/ScreenHint;->mTitleId:I

    .line 152
    iput p2, p0, Lcom/android/camera/ui/ScreenHint;->mMessageId:I

    .line 153
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    .line 155
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    .line 156
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const p2, 0x104000a

    .line 157
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 153
    invoke-static/range {v1 .. v7}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public showFirstUseHint()V
    .locals 11

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "pref_camera_first_use_hint_shown_key"

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v2, "pref_camera_recordlocation_key"

    .line 112
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 113
    invoke-static {}, Lcom/android/camera/Device;->isSupportedGPS()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 114
    new-instance v9, Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {v9, p0}, Lcom/android/camera/ui/ScreenHint$1;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    .line 123
    new-instance v10, Lcom/android/camera/ui/ScreenHint$2;

    invoke-direct {v10, p0}, Lcom/android/camera/ui/ScreenHint$2;-><init>(Lcom/android/camera/ui/ScreenHint;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f00b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v6

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    .line 135
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v0, 0x7f0f00b6

    .line 137
    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f00b4

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f045c

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-static/range {v3 .. v10}, Lcom/android/camera/RotateDialogController;->showSystemChoiceDialog(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mSystemChoiceDialog:Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public showObjectTrackHint()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const/4 v1, 0x0

    const-string v2, "pref_camera_first_tap_screen_hint_shown_key"

    .line 85
    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 86
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 87
    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p0}, Lcom/android/camera/ui/RotateTextToast;->getInstance(Landroid/app/Activity;)Lcom/android/camera/ui/RotateTextToast;

    move-result-object p0

    const v0, 0x7f0f01a8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/RotateTextToast;->show(II)V

    return-void
.end method

.method public updateHint()V
    .locals 6

    .line 36
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 37
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    .line 39
    iget-wide v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageSpace:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f01a4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x2

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f0419

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v4, -0x3

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x3200000

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    .line 46
    invoke-static {}, Lcom/android/camera/storage/Storage;->isPhoneStoragePriority()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f045b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0f045a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 53
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_5

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v1, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_1

    .line 56
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_1
    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {p0}, Lcom/android/camera/OnScreenHint;->show()V

    goto :goto_2

    .line 59
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_7

    .line 60
    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 61
    iput-object v3, p0, Lcom/android/camera/ui/ScreenHint;->mStorageHint:Lcom/android/camera/OnScreenHint;

    :cond_7
    :goto_2
    return-void
.end method
