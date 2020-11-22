.class public Lcom/android/camera/CameraPreferenceActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "CameraPreferenceActivity.java"


# instance fields
.field private mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraPreferenceActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraPreferenceActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private bringUpDoubleConfirmDlg(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/BasePreferenceActivity;->getSnapBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 98
    new-instance v1, Lcom/android/camera/CameraPreferenceActivity$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/camera/CameraPreferenceActivity$1;-><init>(Lcom/android/camera/CameraPreferenceActivity;Ljava/lang/String;Landroid/preference/Preference;Z)V

    .line 118
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f046b

    .line 119
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f0194

    .line 120
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f0455

    .line 121
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f0454

    .line 122
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 123
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    .line 124
    iget-object p0, p0, Lcom/android/camera/CameraPreferenceActivity;->mDoubleConfirmActionChooseDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public changeRequestOrientation()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 83
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method protected getPreferenceXml()I
    .locals 0

    const/high16 p0, 0x7f120000

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":miui:starting_window_label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0f033a

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->changeRequestOrientation()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 31
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_snap_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    const v0, 0x7f0f0354

    .line 34
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 36
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/camera/BasePreferenceActivity;->getSnapStringValue(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 38
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_0
    const p2, 0x7f0f0356

    .line 40
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "key_long_press_volume_down"

    if-nez p2, :cond_2

    const p2, 0x7f0f0355

    .line 41
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "public_transportation_shortcuts"

    .line 42
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraPreferenceActivity;->bringUpDoubleConfirmDlg(Landroid/preference/Preference;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 49
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 51
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-static {p1, v2, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/BasePreferenceActivity;->trackPreferenceChange(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 55
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/camera/BasePreferenceActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected onSettingChanged(I)V
    .locals 0

    .line 26
    sget-object p0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/ChangeManager;->request(I)V

    return-void
.end method
