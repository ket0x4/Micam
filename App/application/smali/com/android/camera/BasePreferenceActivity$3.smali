.class Lcom/android/camera/BasePreferenceActivity$3;
.super Landroid/os/AsyncTask;
.source "BasePreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BasePreferenceActivity;->installQRCodeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BasePreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/BasePreferenceActivity;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 470
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/BasePreferenceActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 473
    invoke-static {}, Lcom/android/camera/BasePreferenceActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "install..."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object p0, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    .line 476
    invoke-static {p0}, Lcom/android/camera/BasePreferenceActivity;->access$300(Lcom/android/camera/BasePreferenceActivity;)Lcom/android/camera/Util$PackageInstallerListener;

    move-result-object p1

    const-string v0, "com.xiaomi.scanner"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 474
    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/camera/Util;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/Util$PackageInstallerListener;ZZ)V

    const/4 p0, 0x0

    return-object p0
.end method
