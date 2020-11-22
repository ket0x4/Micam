.class public Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;
.super Ljava/lang/Object;
.source "CompatibilityUtils.java"


# direct methods
.method public static addChannelForNotificationBuilder(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/Notification$Builder;)V
    .locals 0

    .line 116
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/lib/compatibility/related/v26/V26Utils;->addChannelForNotificationBuilder(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/Notification$Builder;)V

    return-void
.end method

.method public static allocGraphicBuffers()V
    .locals 0

    .line 81
    invoke-static {}, Lcom/android/camera/lib/compatibility/related/v26/V26Utils;->allocGraphicBuffers()V

    return-void
.end method

.method public static createAccessIntent(Landroid/os/storage/StorageVolume;)Landroid/content/Intent;
    .locals 0

    .line 110
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v28/V28Utils;->createAccessIntent(Landroid/os/storage/StorageVolume;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getExifInterface(Ljava/io/FileDescriptor;)Landroid/media/ExifInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v28/V28Utils;->getExifInterface(Ljava/io/FileDescriptor;)Landroid/media/ExifInterface;

    move-result-object p0

    return-object p0
.end method

.method public static getInstallMethodDescription()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-static {}, Lcom/android/camera/lib/compatibility/related/v28/V28Utils;->getInstallMethodDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaMuxer(Ljava/lang/String;)Landroid/media/MediaMuxer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v28/V28Utils;->getMediaMuxer(Ljava/lang/String;)Landroid/media/MediaMuxer;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaUri(Landroid/content/Context;ZZ)Landroid/net/Uri;
    .locals 0

    .line 137
    invoke-static {p0, p1, p2}, Lcom/android/camera/lib/compatibility/related/v29/V29Utils;->getMediaUri(Landroid/content/Context;ZZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageInstallObserver(Lcom/android/camera/Util$PackageInstallerListener;)Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v28/V28Utils;->getPackageInstallObserver(Lcom/android/camera/Util$PackageInstallerListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSdcardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v23/V23Utils;->getSdcardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 106
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v28/V28Utils;->getStorageVolume(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getTransientExtras(Landroid/app/job/JobParameters;)Landroid/os/Bundle;
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v26/V26Utils;->getTransientExtras(Landroid/app/job/JobParameters;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static handleNotchScreen(Landroid/view/Window;)V
    .locals 0

    .line 98
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v28/V28Utils;->handleNotchScreen(Landroid/view/Window;)V

    return-void
.end method

.method public static hasNavigationBar(Landroid/content/Context;Landroid/view/IWindowManager;)Z
    .locals 0

    .line 133
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v29/V29Utils;->hasNavigationBar(Landroid/content/Context;Landroid/view/IWindowManager;)Z

    move-result p0

    return p0
.end method

.method public static final isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v24/V24Utils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static isInVideoCall(Landroid/content/Context;)Z
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v23/V23Utils;->isInVideoCall(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v24/V24Utils;->pauseMediaRecorder(Landroid/media/MediaRecorder;)V

    return-void
.end method

.method public static resumeMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/related/v24/V24Utils;->resumeMediaRecorder(Landroid/media/MediaRecorder;)V

    return-void
.end method

.method public static setScreenEffect(II)V
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v24/V24Utils;->setScreenEffect(II)V

    return-void
.end method

.method public static setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/android/camera/lib/compatibility/related/v21/V21Utils;->setSurfaceTextureOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static setTextPaintLetterSpacing(Landroid/text/TextPaint;F)V
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v21/V21Utils;->setTextPaintLetterSpacing(Landroid/text/TextPaint;F)V

    return-void
.end method

.method public static setTransientExtras(Landroid/app/job/JobInfo$Builder;Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/related/v26/V26Utils;->setTransientExtras(Landroid/app/job/JobInfo$Builder;Landroid/os/Bundle;)V

    return-void
.end method
