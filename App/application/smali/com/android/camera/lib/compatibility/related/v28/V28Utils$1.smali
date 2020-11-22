.class Lcom/android/camera/lib/compatibility/related/v28/V28Utils$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "V28Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/lib/compatibility/related/v28/V28Utils;->getPackageInstallObserver(Lcom/android/camera/Util$PackageInstallerListener;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;


# direct methods
.method constructor <init>(Lcom/android/camera/Util$PackageInstallerListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/camera/lib/compatibility/related/v28/V28Utils$1;->val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "packageInstalled: packageName="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returnCode="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msg="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "V28Utils"

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/android/camera/lib/compatibility/related/v28/V28Utils$1;->val$installedListener:Lcom/android/camera/Util$PackageInstallerListener;

    if-eqz p0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 55
    :goto_0
    invoke-interface {p0, p1, p3}, Lcom/android/camera/Util$PackageInstallerListener;->onPackageInstalled(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
