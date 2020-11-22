.class public Lcom/android/camera/MutexModeManager;
.super Ljava/lang/Object;
.source "MutexModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MutexModeManager$NoneChangeListener;,
        Lcom/android/camera/MutexModeManager$ChangeListener;
    }
.end annotation


# instance fields
.field private mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

.field private mCurrentMutexMode:I

.field private mIsMandatory:Z

.field private mLastMutexMode:I

.field private mRunnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 61
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    .line 64
    new-instance v0, Lcom/android/camera/MutexModeManager$NoneChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/MutexModeManager$NoneChangeListener;-><init>(Lcom/android/camera/MutexModeManager$1;)V

    iput-object v0, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    .line 67
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    return-void
.end method

.method private enter(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p1, :cond_0

    .line 241
    iget-object p0, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 242
    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    const-string p1, "enter"

    .line 244
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 245
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private exit(I)V
    .locals 1

    .line 228
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p1, :cond_0

    .line 230
    iget-object p0, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 231
    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    const-string p1, "exit"

    .line 233
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 234
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static getMutexModeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const-string p0, "none"

    return-object p0

    :cond_0
    const-string p0, "super-resolution"

    return-object p0

    :cond_1
    const-string p0, "burst-shoot"

    return-object p0

    :cond_2
    const-string p0, "raw"

    return-object p0

    :cond_3
    const-string p0, "hand-night"

    return-object p0

    :cond_4
    const-string p0, "aohdr"

    return-object p0

    :cond_5
    const-string p0, "hdr"

    return-object p0
.end method

.method private switchMutexMode(II)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMutexMode from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MutexModeManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, p2, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/android/camera/MutexModeManager;->exit(I)V

    .line 254
    invoke-direct {p0, p2}, Lcom/android/camera/MutexModeManager;->enter(I)V

    .line 255
    iget-object p0, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/android/camera/MutexModeManager$ChangeListener;->onMutexModeChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearMandatoryFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 174
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "HHT"

    return-object p0

    :cond_1
    const-string p0, "AO_HDR"

    return-object p0

    :cond_2
    const-string p0, "HDR"

    return-object p0
.end method

.method public getLastMutexMode()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    return p0
.end method

.method public getMutexMode()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    .line 187
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string p0, "_RAW"

    return-object p0

    .line 190
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->enableAlgorithmInFileSuffix()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isForceNameSuffix()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 191
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    return-object v1

    :cond_3
    const-string p0, "_HHT"

    return-object p0

    :cond_4
    const-string p0, "_AO_HDR"

    return-object p0

    :cond_5
    const-string p0, "_HDR"

    return-object p0
.end method

.method public inMandatoryMode()Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    return p0
.end method

.method public isAoHdr()Z
    .locals 1

    .line 133
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBurstShoot()Z
    .locals 1

    .line 158
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHandNight()Z
    .locals 1

    .line 166
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHdr()Z
    .locals 2

    .line 145
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isMorphoHdr()Z
    .locals 1

    .line 137
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedComposed()Z
    .locals 1

    .line 162
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormal()Z
    .locals 0

    .line 129
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRAW()Z
    .locals 1

    .line 154
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSceneHdr()Z
    .locals 1

    .line 150
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuperResolution()Z
    .locals 1

    .line 170
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportedFlashOn()Z
    .locals 1

    .line 117
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupportedTorch()Z
    .locals 1

    .line 124
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUbiFocus()Z
    .locals 1

    .line 141
    iget p0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetMutexMode()V
    .locals 2

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 99
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method

.method public setMutexMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 92
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method

.method public setMutexModeChangeListener(Lcom/android/camera/MutexModeManager$ChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 71
    new-instance p1, Lcom/android/camera/MutexModeManager$NoneChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/camera/MutexModeManager$NoneChangeListener;-><init>(Lcom/android/camera/MutexModeManager$1;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mChangeListener:Lcom/android/camera/MutexModeManager$ChangeListener;

    return-void
.end method

.method public setMutexModeMandatory(I)V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 76
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method
