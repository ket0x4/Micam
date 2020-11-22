.class public Lcom/android/camera/lib/compatibility/related/v28/V28Utils;
.super Ljava/lang/Object;
.source "V28Utils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method public static createAccessIntent(Landroid/os/storage/StorageVolume;)Landroid/content/Intent;
    .locals 1

    .line 94
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getExifInterface(Ljava/io/FileDescriptor;)Landroid/media/ExifInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static getInstallMethodDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)Z"

    return-object v0
.end method

.method public static getMediaMuxer(Ljava/lang/String;)Landroid/media/MediaMuxer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/camera/FileCompat;->getDocumentFile(Ljava/lang/String;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 77
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-static {p0, v0}, Lcom/android/camera/storage/Storage;->putDocumentFile(Ljava/lang/String;Landroid/support/v4/provider/DocumentFile;)V

    .line 79
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_0
    :try_start_2
    const-string v3, "V28Utils"

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open file failed, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static getPackageInstallObserver(Lcom/android/camera/Util$PackageInstallerListener;)Ljava/lang/Object;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/camera/lib/compatibility/related/v28/V28Utils$1;

    invoke-direct {v0, p0}, Lcom/android/camera/lib/compatibility/related/v28/V28Utils$1;-><init>(Lcom/android/camera/Util$PackageInstallerListener;)V

    return-object v0
.end method

.method public static getStorageVolume(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static handleNotchScreen(Landroid/view/Window;)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
