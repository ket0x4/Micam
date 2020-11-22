.class Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method public constructor <init>(Lcom/android/camera/ThumbnailUpdater;Z)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 94
    iput-boolean p2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    return-void
.end method

.method private isSameThumbnail(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0

    :cond_2
    :goto_1
    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    return p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 7

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LoadThumbnailTask execute, lookatcache="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThumbnailUpdater"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return-object v1

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 114
    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    .line 117
    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailUri(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->isSameThumbnail(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p0}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object p0

    return-object p0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    .line 124
    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz p1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    .line 127
    invoke-static {v2}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 126
    invoke-static {p1, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v1

    .line 130
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_5
    if-eqz p1, :cond_6

    .line 136
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v1

    :goto_1
    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/camera/Thumbnail;

    .line 140
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v5

    if-nez v5, :cond_7

    .line 142
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    .line 143
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    .line 142
    invoke-static {v5, v4, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I

    move-result v2

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get last thumbnail from provider, code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 146
    :cond_7
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    .line 147
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v6

    .line 146
    invoke-static {v5, v4, v6, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromUriList(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I

    move-result v2

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get last thumbnail from uri list, code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, -0x1

    if-eq v2, v0, :cond_b

    if-eqz v2, :cond_a

    if-eq v2, v3, :cond_9

    const/4 p1, 0x2

    if-eq v2, p1, :cond_8

    return-object v1

    .line 158
    :cond_8
    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-object v1

    :cond_9
    const/4 p0, 0x0

    .line 156
    aget-object p0, v4, p0

    return-object p0

    :cond_a
    return-object v1

    :cond_b
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask onPostExecute, thumbnai is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", canceled"

    goto :goto_0

    :cond_0
    const-string v1, ", not canceled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    .line 166
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 172
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
