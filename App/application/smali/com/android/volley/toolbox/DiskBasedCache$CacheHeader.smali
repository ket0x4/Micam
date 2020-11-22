.class Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheHeader"
.end annotation


# instance fields
.field final allResponseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field final etag:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field final lastModified:J

.field final serverDate:J

.field size:J

.field final softTtl:J

.field final ttl:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 12

    .line 418
    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iget-wide v5, p2, Lcom/android/volley/Cache$Entry;->lastModified:J

    iget-wide v7, p2, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v9, p2, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 425
    invoke-static {p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->getAllResponseHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    .line 418
    invoke-direct/range {v0 .. v11}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    const-string p1, ""

    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 404
    iput-wide p3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 405
    iput-wide p5, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    .line 406
    iput-wide p7, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 407
    iput-wide p9, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 408
    iput-object p11, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    return-void
.end method

.method private static getAllResponseHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 435
    :cond_0
    iget-object p0, p0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->toAllHeaderList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static readHeader(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    .line 450
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 453
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 454
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 455
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 456
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readHeaderList(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;

    move-result-object v13

    .line 457
    new-instance p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    .line 448
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    .locals 3

    .line 463
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 464
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 465
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 466
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 467
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 468
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 469
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 470
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->toHeaderMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 471
    iget-object p0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    return-object v0
.end method

.method writeHeader(Ljava/io/OutputStream;)Z
    .locals 4

    const v0, 0x20150306

    const/4 v1, 0x1

    .line 478
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 479
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 481
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 482
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 483
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 484
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 485
    iget-object p0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeHeaderList(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 486
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    .line 489
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "%s"

    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
