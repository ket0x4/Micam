.class Lcom/android/camera/BasePreferenceActivity$4$1;
.super Ljava/lang/Object;
.source "BasePreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BasePreferenceActivity$4;->onPackageInstalled(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BasePreferenceActivity$4;

.field final synthetic val$scanQRCode:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/BasePreferenceActivity$4;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/android/camera/BasePreferenceActivity$4$1;->this$1:Lcom/android/camera/BasePreferenceActivity$4;

    iput-object p2, p0, Lcom/android/camera/BasePreferenceActivity$4$1;->val$scanQRCode:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity$4$1;->val$scanQRCode:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity$4$1;->this$1:Lcom/android/camera/BasePreferenceActivity$4;

    iget-object v0, v0, Lcom/android/camera/BasePreferenceActivity$4;->this$0:Lcom/android/camera/BasePreferenceActivity;

    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity$4$1;->val$scanQRCode:Landroid/preference/CheckBoxPreference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/BasePreferenceActivity;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method
