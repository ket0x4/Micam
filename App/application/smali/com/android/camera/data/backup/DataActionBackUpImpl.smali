.class public Lcom/android/camera/data/backup/DataActionBackUpImpl;
.super Ljava/lang/Object;
.source "DataActionBackUpImpl.java"

# interfaces
.implements Lcom/android/camera/data/backup/DataBackUp;


# instance fields
.field private mBackupArrays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/util/SimpleArrayMap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->cloneValues()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    .line 52
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p4, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->resetAll()V

    :cond_2
    return-void
.end method

.method public clearBackUp()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public getBackupFilter(II)Ljava/lang/String;
    .locals 1

    .line 153
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result p1

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 157
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "pref_camera_shader_coloreffect_key"

    .line 159
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    .line 161
    sget p0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getBackupRunning(II)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_1

    return-object v0

    .line 107
    :cond_1
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/util/SimpleArrayMap;

    return-object p0
.end method

.method public isLastVideoFastMotion()Z
    .locals 2

    .line 112
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_video_speed_fast_key"

    .line 118
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    return v1

    .line 122
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isLastVideoSlowMotion()Z
    .locals 2

    .line 127
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/backup/DataActionBackUpImpl;->getBackupRunning(II)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_video_speed_slow_key"

    .line 133
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    return v1

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public removeOtherVideoMode()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v0

    .line 146
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/16 v2, 0xa8

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 148
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V
    .locals 0

    .line 61
    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->resetAll()V

    .line 65
    iget-object p0, p0, Lcom/android/camera/data/backup/DataActionBackUpImpl;->mBackupArrays:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/util/SimpleArrayMap;

    .line 73
    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/DataItemBase;->replace(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 76
    invoke-virtual {p2}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 77
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method
