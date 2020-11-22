.class final Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;
.super Ljava/lang/Object;
.source "DataProviderMgr.java"

# interfaces
.implements Lcom/android/camera/data/provider/DataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/provider/DataProviderMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataProviderImpl"
.end annotation


# instance fields
.field private mDataGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

.field private mDataItemConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/data/data/config/DataItemConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mDataItemFeature:Lcom/android/camera/data/data/feature/DataItemFeature;

.field private mDataRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mTimeOut:Z

.field final synthetic this$0:Lcom/android/camera/data/provider/DataProviderMgr;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/provider/DataProviderMgr;)V
    .locals 1

    .line 29
    iput-object p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->this$0:Lcom/android/camera/data/provider/DataProviderMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p1, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-direct {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 31
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    .line 32
    new-instance p1, Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-direct {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 33
    new-instance p1, Lcom/android/camera/data/data/feature/DataItemFeature;

    invoke-direct {p1}, Lcom/android/camera/data/data/feature/DataItemFeature;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemFeature:Lcom/android/camera/data/data/feature/DataItemFeature;

    return-void
.end method


# virtual methods
.method public dataConfig()Lcom/android/camera/data/data/config/DataItemConfig;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataConfig(II)Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    return-object p0
.end method

.method public dataConfig(II)Lcom/android/camera/data/data/config/DataItemConfig;
    .locals 4

    .line 38
    invoke-static {p1, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/camera/data/data/config/DataItemConfig;

    iget-boolean v3, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mTimeOut:Z

    invoke-direct {v2, p1, p2, v3}, Lcom/android/camera/data/data/config/DataItemConfig;-><init>(IIZ)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/config/DataItemConfig;

    return-object p0
.end method

.method public bridge synthetic dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataConfig(II)Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    return-object p0
.end method

.method public dataFeature()Lcom/android/camera/data/data/feature/DataItemFeature;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemFeature:Lcom/android/camera/data/data/feature/DataItemFeature;

    return-object p0
.end method

.method public bridge synthetic dataFeature()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object p0

    return-object p0
.end method

.method public dataGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

    return-object p0
.end method

.method public bridge synthetic dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    return-object p0
.end method

.method public dataRunning()Lcom/android/camera/data/data/runing/DataItemRunning;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    return-object p0
.end method

.method public bridge synthetic dataRunning()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->dataRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    return-object p0
.end method

.method public setTimeOut(Z)V
    .locals 2

    .line 66
    iput-boolean p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mTimeOut:Z

    .line 67
    iget-object p1, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/camera/data/provider/DataProviderMgr$DataProviderImpl;->mDataItemConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/DataItemConfig;->setTimeOut(Z)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
