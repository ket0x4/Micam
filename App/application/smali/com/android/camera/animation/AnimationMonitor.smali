.class public Lcom/android/camera/animation/AnimationMonitor;
.super Ljava/lang/Object;
.source "AnimationMonitor.java"


# static fields
.field private static instance:Lcom/android/camera/animation/AnimationMonitor;


# instance fields
.field private mLastCheckTime:J

.field private mRunningAnimations:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    return-void
.end method

.method private checkRunningAnimations()V
    .locals 7

    const-string v0, "AnimationMonitor"

    const-string v1, "checkRunningAnimations"

    .line 49
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v3, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 58
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static get()Lcom/android/camera/animation/AnimationMonitor;
    .locals 2

    .line 22
    sget-object v0, Lcom/android/camera/animation/AnimationMonitor;->instance:Lcom/android/camera/animation/AnimationMonitor;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/android/camera/animation/AnimationMonitor;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/android/camera/animation/AnimationMonitor;->instance:Lcom/android/camera/animation/AnimationMonitor;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/android/camera/animation/AnimationMonitor;

    invoke-direct {v1}, Lcom/android/camera/animation/AnimationMonitor;-><init>()V

    sput-object v1, Lcom/android/camera/animation/AnimationMonitor;->instance:Lcom/android/camera/animation/AnimationMonitor;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/animation/AnimationMonitor;->instance:Lcom/android/camera/animation/AnimationMonitor;

    return-object v0
.end method


# virtual methods
.method public animationStart(Ljava/lang/Object;I)V
    .locals 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationStart animationObject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationMonitor"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    int-to-long v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public animationStop(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "AnimationMonitor"

    const-string v1, "animationStop"

    .line 73
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hasAnimationRunning()Z
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/animation/AnimationMonitor;->mLastCheckTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/android/camera/animation/AnimationMonitor;->checkRunningAnimations()V

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/animation/AnimationMonitor;->mLastCheckTime:J

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/camera/animation/AnimationMonitor;->mRunningAnimations:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
