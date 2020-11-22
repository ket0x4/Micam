.class public abstract Lcom/android/camera/data/data/DataItemBase;
.super Ljava/lang/Object;
.source "DataItemBase.java"

# interfaces
.implements Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
.implements Lcom/android/camera/data/provider/DataProvider$ProviderEditor;


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mLock:Ljava/lang/Object;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mValues:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    .line 17
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->initPreferences()V

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/DataItemBase;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private initPreferences()V
    .locals 3

    .line 332
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 334
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->provideKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .line 300
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    const-string p0, "DataItemBase"

    const-string v1, "Error!!! Editor null!"

    .line 310
    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    monitor-exit v0

    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    .line 315
    iput-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 316
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 301
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Transient data\uff01"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 281
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 284
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cloneValues()Landroid/support/v4/util/SimpleArrayMap;
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 371
    iget-object p0, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p0}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 372
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public commit()Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 292
    iget-object p0, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 294
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 295
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 95
    :cond_0
    monitor-exit v0

    return-object p0

    .line 90
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "not allowed to modify"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 41
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 74
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 52
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 63
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    monitor-exit v0

    return-wide p2

    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 27
    :try_start_1
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    const-string p1, "DataItemBase"

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_2
    monitor-exit v0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    move-object p2, v1

    :goto_3
    return-object p2

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method protected getValues()Landroid/support/v4/util/SimpleArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object p0, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    return-object p0
.end method

.method protected isMutable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 119
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 152
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public replace(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->getValues()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 357
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->getValues()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 358
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetAll()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->getValues()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 364
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
