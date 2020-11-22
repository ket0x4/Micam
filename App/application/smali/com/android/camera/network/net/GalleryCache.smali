.class public Lcom/android/camera/network/net/GalleryCache;
.super Lcom/android/volley/toolbox/DiskBasedCache;
.source "GalleryCache.java"


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 6

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "From-Cache"

    const/4 v3, 0x1

    .line 49
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    const-string v1, "GalleryCache"

    const-string v2, "get cache: key %s, isExpired: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "GalleryCache"

    const-string v1, "cache hit."

    .line 53
    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isCacheValid(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/android/volley/Cache$Entry;->isExpired()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 63
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 66
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 30
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized put(Ljava/lang/String;[BJJ)V
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 34
    iput-object p2, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 35
    iput-wide p3, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 36
    iput-wide p5, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 37
    invoke-super {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    const-string p5, "GalleryCache"

    const-string p6, "put cache. key %s size %s expires %s"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    array-length v1, p2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    .line 38
    invoke-static {p6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
