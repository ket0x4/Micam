.class public Lcom/android/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/RequestQueue$RequestEventListener;,
        Lcom/android/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mDispatchers:[Lcom/android/volley/NetworkDispatcher;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/RequestQueue$RequestEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V
    .locals 1

    const/4 v0, 0x4

    .line 167
    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V
    .locals 3

    .line 153
    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    .line 157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 153
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 104
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    .line 140
    iput-object p2, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    .line 141
    new-array p1, p3, [Lcom/android/volley/NetworkDispatcher;

    iput-object p1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    .line 142
    iput-object p4, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation

    .line 256
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setRequestQueue(Lcom/android/volley/RequestQueue;)Lcom/android/volley/Request;

    .line 257
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setSequence(I)Lcom/android/volley/Request;

    const-string v0, "add-to-queue"

    .line 263
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/RequestQueue;->sendRequestEvent(Lcom/android/volley/Request;I)V

    .line 267
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p0

    .line 259
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method finish(Lcom/android/volley/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    .line 286
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/RequestQueue$RequestFinishedListener;

    .line 287
    invoke-interface {v2, p1}, Lcom/android/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 289
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/RequestQueue;->sendRequestEvent(Lcom/android/volley/Request;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 289
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 284
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public getSequenceNumber()I
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method sendRequestEvent(Lcom/android/volley/Request;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object p0, p0, Lcom/android/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/RequestQueue$RequestEventListener;

    .line 297
    invoke-interface {v1, p1, p2}, Lcom/android/volley/RequestQueue$RequestEventListener;->onRequestEvent(Lcom/android/volley/Request;I)V

    goto :goto_0

    .line 299
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 6

    .line 172
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 174
    new-instance v0, Lcom/android/volley/CacheDispatcher;

    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    iput-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    .line 175
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 179
    new-instance v1, Lcom/android/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/RequestQueue;->mNetwork:Lcom/android/volley/Network;

    iget-object v4, p0, Lcom/android/volley/RequestQueue;->mCache:Lcom/android/volley/Cache;

    iget-object v5, p0, Lcom/android/volley/RequestQueue;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V

    .line 181
    iget-object v2, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    .line 182
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/volley/RequestQueue;->mCacheDispatcher:Lcom/android/volley/CacheDispatcher;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->quit()V

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/android/volley/RequestQueue;->mDispatchers:[Lcom/android/volley/NetworkDispatcher;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v2}, Lcom/android/volley/NetworkDispatcher;->quit()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
