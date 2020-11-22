.class Lcom/android/camera/storage/ImageSaver$MemoryManager;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Lcom/android/camera/storage/Storage$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryManager"
.end annotation


# instance fields
.field private mMaxMemory:J

.field private mMaxTotalMemory:I

.field private mRuntime:Ljava/lang/Runtime;

.field private mSaveTaskMemoryLimit:I

.field private mSavedQueueMemoryLimit:I

.field private mSaverMemoryUse:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$1;)V
    .locals 0

    .line 652
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I
    .locals 0

    .line 652
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBurstDelay()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 0

    .line 652
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedStopCapture()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 0

    .line 652
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z
    .locals 0

    .line 652
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isSaveQueueFull()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V
    .locals 0

    .line 652
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->addUsedMemory(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V
    .locals 0

    .line 652
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initMemory()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V
    .locals 0

    .line 652
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->reduceUsedMemory(I)V

    return-void
.end method

.method private addUsedMemory(I)V
    .locals 1

    .line 715
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    return-void
.end method

.method private getBaseMemory()J
    .locals 4

    .line 701
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    const/16 v1, 0x2d0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x438

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a0

    if-eq v0, v1, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x3c00000

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x2800000

    return-wide v0

    :cond_2
    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method private getBurstDelay()I
    .locals 7

    .line 725
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isNeedSlowDown()Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x5

    if-eqz v0, :cond_4

    .line 726
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v5, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v6, v5, 0x7

    div-int/2addr v6, v2

    if-lt v0, v6, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v5, 0x5

    .line 728
    div-int/lit8 v2, v2, 0x6

    if-lt v0, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v5, 0x4

    .line 730
    div-int/2addr v2, v4

    if-lt v0, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    mul-int/2addr v5, v1

    .line 732
    div-int/2addr v5, v3

    if-lt v0, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 738
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBurstDelay: delayMultiple="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    mul-int/lit8 v1, v1, 0x64

    return v1
.end method

.method private getTotalUsedMemory()I
    .locals 9

    .line 743
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    .line 744
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLeftMemory: maxMemory="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", free="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalUsed="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    long-to-int p0, v4

    return p0
.end method

.method private initLimit()V
    .locals 4

    .line 686
    iget-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getBaseMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 687
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 688
    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 691
    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    .line 693
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    const/high16 v1, 0x3c00000

    if-ge v1, v0, :cond_1

    .line 694
    iput v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    .line 697
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSavedQueueMemoryLimit:I

    return-void
.end method

.method private initMemory()V
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    .line 678
    iget-wide v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    long-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxTotalMemory:I

    const/4 v0, 0x0

    .line 679
    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    .line 680
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initLimit()V

    .line 681
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->setStorageListener(Lcom/android/camera/storage/Storage$StorageListener;)V

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMemory: maxMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxMemory:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraMemoryManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isNeedSlowDown()Z
    .locals 4

    .line 775
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 776
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v3, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 778
    :cond_1
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget v3, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    div-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    .line 780
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSlowDown: return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSaverMemoryUse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSaveTaskMemoryLimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    return v1
.end method

.method private isNeedStopCapture()Z
    .locals 4

    .line 764
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->isReachedMemoryLimit()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mMaxTotalMemory:I

    .line 765
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->getTotalUsedMemory()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 766
    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v0

    iget p0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedStopCapture: needStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMemoryManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method private isReachedMemoryLimit()Z
    .locals 2

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isReachedMemoryLimit: usedMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 758
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget p0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaveTaskMemoryLimit:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSaveQueueFull()Z
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSaveQueueFull: usedMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->log(Ljava/lang/String;)V

    .line 753
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    iget p0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSavedQueueMemoryLimit:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 786
    sget-boolean p0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz p0, :cond_0

    const-string p0, "CameraMemoryManager"

    .line 787
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private reduceUsedMemory(I)V
    .locals 1

    .line 719
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$MemoryManager;->mSaverMemoryUse:I

    return-void
.end method


# virtual methods
.method public onStoragePathChanged()V
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->initMemory()V

    return-void
.end method
