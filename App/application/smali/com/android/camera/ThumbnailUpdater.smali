.class public Lcom/android/camera/ThumbnailUpdater;
.super Ljava/lang/Object;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;,
        Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
    }
.end annotation


# instance fields
.field private mActivityBase:Lcom/android/camera/ActivityBase;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnail:Lcom/android/camera/Thumbnail;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    .line 23
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;

    return-object p0
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public getLastThumbnail()V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastThumbnail, current thumbnailtask is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 74
    :cond_0
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public getLastThumbnailUncached()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 81
    :cond_0
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;Z)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public getThumbnail()Lcom/android/camera/Thumbnail;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object p0
.end method

.method public saveThumbnailToFile()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ThumbnailUpdater$SaveThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/ThumbnailUpdater$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/Thumbnail;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0, p3}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    :cond_0
    return-void
.end method

.method public updatePreviewThumbnailUri(Landroid/net/Uri;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/camera/Thumbnail;->setUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public updateThumbnailView(Z)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-nez v0, :cond_0

    .line 56
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string p1, "ThumbnailUpdater"

    const-string v0, "won\'t update thumbnail"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    return-void
.end method
