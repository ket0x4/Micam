.class public Lcom/android/camera/data/DataRepository;
.super Ljava/lang/Object;
.source "DataRepository.java"

# interfaces
.implements Lcom/android/camera/data/DataProtocol;


# static fields
.field private static sInstance:Lcom/android/camera/data/DataRepository;


# instance fields
.field private mDataBackUp:Lcom/android/camera/data/backup/DataBackUpMgr;

.field private mDataProvider:Lcom/android/camera/data/provider/DataProviderMgr;

.field private mDataRestore:Lcom/android/camera/data/restore/DataRestoreMgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/camera/data/backup/DataBackUpMgr;

    invoke-direct {v0}, Lcom/android/camera/data/backup/DataBackUpMgr;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/DataRepository;->mDataBackUp:Lcom/android/camera/data/backup/DataBackUpMgr;

    .line 26
    new-instance v0, Lcom/android/camera/data/restore/DataRestoreMgr;

    invoke-direct {v0}, Lcom/android/camera/data/restore/DataRestoreMgr;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/DataRepository;->mDataRestore:Lcom/android/camera/data/restore/DataRestoreMgr;

    .line 27
    new-instance v0, Lcom/android/camera/data/provider/DataProviderMgr;

    invoke-direct {v0}, Lcom/android/camera/data/provider/DataProviderMgr;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/DataRepository;->mDataProvider:Lcom/android/camera/data/provider/DataProviderMgr;

    return-void
.end method

.method public static dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;
    .locals 1

    .line 74
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    return-object v0
.end method

.method public static dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;
    .locals 1

    .line 78
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataFeature()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/feature/DataItemFeature;

    return-object v0
.end method

.method public static dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;
    .locals 1

    .line 70
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    return-object v0
.end method

.method public static dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;
    .locals 1

    .line 66
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataRunning()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/runing/DataItemRunning;

    return-object v0
.end method

.method public static getInstance()Lcom/android/camera/data/DataRepository;
    .locals 2

    .line 31
    sget-object v0, Lcom/android/camera/data/DataRepository;->sInstance:Lcom/android/camera/data/DataRepository;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/android/camera/data/DataRepository;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/android/camera/data/DataRepository;->sInstance:Lcom/android/camera/data/DataRepository;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/android/camera/data/DataRepository;

    invoke-direct {v1}, Lcom/android/camera/data/DataRepository;-><init>()V

    sput-object v1, Lcom/android/camera/data/DataRepository;->sInstance:Lcom/android/camera/data/DataRepository;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/data/DataRepository;->sInstance:Lcom/android/camera/data/DataRepository;

    return-object v0
.end method

.method public static provider()Lcom/android/camera/data/provider/DataProvider;
    .locals 1

    .line 62
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/data/DataRepository;->mDataProvider:Lcom/android/camera/data/provider/DataProviderMgr;

    invoke-virtual {v0}, Lcom/android/camera/data/provider/DataProviderMgr;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public backUp()Lcom/android/camera/data/backup/DataBackUp;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/camera/data/DataRepository;->mDataBackUp:Lcom/android/camera/data/backup/DataBackUpMgr;

    invoke-virtual {p0}, Lcom/android/camera/data/backup/DataBackUpMgr;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object p0

    return-object p0
.end method
