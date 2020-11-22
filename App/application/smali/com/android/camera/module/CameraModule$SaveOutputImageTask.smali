.class Lcom/android/camera/module/CameraModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

.field private mHeight:I

.field private mLocation:Landroid/location/Location;

.field private mOrientation:I

.field private mStartTime:J

.field private mTimeTaken:J

.field private mTitle:Ljava/lang/String;

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/groupshot/GroupShot;)V
    .locals 0

    .line 1816
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1817
    iput-wide p2, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTimeTaken:J

    .line 1818
    iput-object p4, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mLocation:Landroid/location/Location;

    .line 1819
    iput p5, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mWidth:I

    .line 1820
    iput p6, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mHeight:I

    .line 1821
    iput p7, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mOrientation:I

    .line 1822
    iput-object p8, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTitle:Ljava/lang/String;

    .line 1823
    iput-object p9, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    return-void
.end method

.method private finishGroupShot()V
    .locals 2

    .line 1912
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->clearImages()I

    .line 1913
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->finish()V

    .line 1914
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1915
    iput-object v1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    .line 1917
    :cond_0
    iput-object v1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    .line 1918
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$5006(Lcom/android/camera/module/CameraModule;)I

    return-void
.end method

.method private saveGroupShotImage(Ljava/lang/String;)V
    .locals 4

    .line 1922
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1923
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {p0, p1}, Lcom/android/camera/groupshot/GroupShot;->getImageAndSaveJpeg(Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1928
    :try_start_0
    invoke-static {p1, v1}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1929
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/groupshot/GroupShot;->getImageAndSaveJpeg(Ljava/io/FileDescriptor;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1931
    :try_start_1
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open file failed, filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 1933
    :goto_2
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14

    .line 1828
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "doInBackground start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1831
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->attach_end()I

    move-result v0

    .line 1832
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v2, "attach_end() = 0x%08x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0, v5}, Lcom/android/camera/groupshot/GroupShot;->setBaseImage(I)I

    move-result v0

    .line 1837
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v2, "setBaseImage() = 0x%08x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->setBestFace()I

    .line 1839
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupshot attach end & setbestface cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1844
    :try_start_1
    invoke-direct {p0, v7}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->saveGroupShotImage(Ljava/lang/String;)V

    .line 1847
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_1

    const-string v0, ".jpg"

    .line 1848
    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1849
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1851
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$4900(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/groupshot/GroupShot;->saveInputImages(Ljava/lang/String;)I

    .line 1854
    :cond_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 1857
    :cond_2
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupshot finish group cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1865
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 1869
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1870
    iget v8, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mOrientation:I

    iget-wide v9, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTimeTaken:J

    iget-object v11, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mLocation:Landroid/location/Location;

    iget v12, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mWidth:I

    iget v13, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mHeight:I

    move-object v6, v0

    invoke-static/range {v6 .. v13}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v1

    .line 1872
    sget-object v2, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "groupshot insert db cost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v2, :cond_4

    return-object p1

    .line 1878
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    if-eqz v1, :cond_5

    .line 1881
    invoke-virtual {v2, v1}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    .line 1882
    invoke-static {v0, v1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1883
    invoke-static {v0, v1, v5}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 1884
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v5}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 1886
    :cond_5
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupshot asynctask cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v7, p1

    .line 1859
    :goto_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveOutputImageTask exception occurs, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_6

    .line 1861
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_6
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1805
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 2

    .line 1897
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v1, "SaveOutputImageTask onCancelled"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->finishGroupShot()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    .line 1903
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string v0, "SaveOutputImageTask onPostExecute"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    iget-object p1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, p1, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 1905
    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    .line 1907
    :cond_0
    sget-object p1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "groupshot image process cost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->finishGroupShot()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1805
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    return-void
.end method
