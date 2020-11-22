.class public Lcom/android/camera/network/net/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static instance:Lcom/android/camera/network/net/HttpManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequestCache:Lcom/android/camera/network/net/GalleryCache;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/network/net/HttpManager;
    .locals 2

    const-class v0, Lcom/android/camera/network/net/HttpManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/android/camera/network/net/HttpManager;

    invoke-direct {v1}, Lcom/android/camera/network/net/HttpManager;-><init>()V

    sput-object v1, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;

    .line 33
    :cond_0
    sget-object v1, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/android/camera/network/net/HttpManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public putDefaultCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/camera/network/net/HttpManager;->mRequestCache:Lcom/android/camera/network/net/GalleryCache;

    invoke-virtual {v0, p1}, Lcom/android/camera/network/net/GalleryCache;->isCacheValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/network/net/HttpManager;->mRequestCache:Lcom/android/camera/network/net/GalleryCache;

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/android/camera/network/net/HttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/camera/sticker/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    .line 61
    iget-object p0, p0, Lcom/android/camera/network/net/HttpManager;->mRequestCache:Lcom/android/camera/network/net/GalleryCache;

    invoke-virtual {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->initialize()V

    :cond_0
    return-void
.end method

.method public putToCache(Ljava/lang/String;[BJJ)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/android/camera/network/net/HttpManager;->mRequestCache:Lcom/android/camera/network/net/GalleryCache;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/network/net/GalleryCache;->put(Ljava/lang/String;[BJJ)V

    return-void
.end method
