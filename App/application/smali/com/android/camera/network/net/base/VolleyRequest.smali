.class public abstract Lcom/android/camera/network/net/base/VolleyRequest;
.super Lcom/android/camera/network/net/base/BaseRequest;
.source "VolleyRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/network/net/base/BaseRequest<",
        "TE;>;",
        "Lcom/android/volley/Response$Listener<",
        "TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/android/camera/network/net/base/BaseRequest;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private releaseSyncExecuteLock()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation
.end method

.method public execute()V
    .locals 5

    .line 35
    invoke-virtual {p0, p0, p0}, Lcom/android/camera/network/net/base/VolleyRequest;->createVolleyRequest(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    .line 36
    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x2710

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 41
    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/android/camera/network/net/base/BaseRequest;->isUseCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/network/net/base/BaseRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 48
    :cond_1
    invoke-static {}, Lcom/android/camera/network/net/HttpManager;->getInstance()Lcom/android/camera/network/net/HttpManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0, p0}, Lcom/android/camera/network/net/HttpManager;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method protected final handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 125
    iput-wide v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/network/net/base/BaseRequest;->onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract handleResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 113
    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->NET_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    .line 114
    instance-of v1, p1, Lcom/android/camera/network/net/base/RequestError;

    if-eqz v1, :cond_0

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/android/camera/network/net/base/RequestError;

    invoke-virtual {v0}, Lcom/android/camera/network/net/base/RequestError;->getErrorCode()Lcom/android/camera/network/net/base/ErrorCode;

    move-result-object v0

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 120
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/base/VolleyRequest;->handleResponse(Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    .line 101
    iget-object p1, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    instance-of v0, p1, Lcom/android/camera/network/net/base/Cacheable;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lcom/android/camera/network/net/base/Cacheable;

    .line 103
    iget-wide v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/network/net/base/Cacheable;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/android/camera/network/net/HttpManager;->getInstance()Lcom/android/camera/network/net/HttpManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/camera/network/net/base/Cacheable;->getData()[B

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    iget-wide v6, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheSoftTtl:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/network/net/HttpManager;->putToCache(Ljava/lang/String;[BJJ)V

    :cond_0
    return-void
.end method
