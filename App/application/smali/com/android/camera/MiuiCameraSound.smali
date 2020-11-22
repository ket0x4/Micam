.class public Lcom/android/camera/MiuiCameraSound;
.super Ljava/lang/Object;
.source "MiuiCameraSound.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final SOUND_FILES:[Ljava/lang/String;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForceSound:Z

.field private mLastPlayTime:J

.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "camera_click_v9.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "camera_focus_v9.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video_record_start_v9.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "video_record_end_v9.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "camera_fast_burst_v9.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sound_shuter_delay_bee.ogg"

    aput-object v2, v0, v1

    .line 42
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NumberPickerValueChange.ogg"

    goto :goto_0

    :cond_0
    const-string v1, "/system/media/audio/ui/NumberPickerValueChange.ogg"

    :goto_0
    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    const-string v2, "audio_capture.ogg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/android/camera/MiuiCameraSound;->mLastPlayTime:J

    .line 153
    new-instance v0, Lcom/android/camera/MiuiCameraSound$3;

    invoke-direct {v0, p0}, Lcom/android/camera/MiuiCameraSound$3;-><init>(Lcom/android/camera/MiuiCameraSound;)V

    iput-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    const-string v0, "audio"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound;->mAssetManager:Landroid/content/res/AssetManager;

    .line 71
    iput-boolean p2, p0, Lcom/android/camera/MiuiCameraSound;->mForceSound:Z

    .line 72
    new-instance p1, Landroid/media/SoundPool;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/camera/MiuiCameraSound;->mForceSound:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x7

    :goto_1
    const/4 v1, 0x0

    .line 73
    invoke-direct {p1, v0, p2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    .line 74
    iget-object p1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object p2, p0, Lcom/android/camera/MiuiCameraSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 75
    sget-object p1, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    .line 76
    :goto_2
    iget-object p1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    array-length p2, p1

    const/4 v0, -0x1

    if-ge v1, p2, :cond_2

    .line 77
    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 79
    :cond_2
    iput v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    .line 82
    new-instance p1, Lcom/android/camera/MiuiCameraSound$2;

    invoke-direct {p1, p0}, Lcom/android/camera/MiuiCameraSound$2;-><init>(Lcom/android/camera/MiuiCameraSound;)V

    sget-object p2, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {p1, p2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 88
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lcom/android/camera/MiuiCameraSound$1;

    invoke-direct {p2, p0}, Lcom/android/camera/MiuiCameraSound$1;-><init>(Lcom/android/camera/MiuiCameraSound;)V

    .line 89
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/MiuiCameraSound;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/camera/MiuiCameraSound;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/MiuiCameraSound;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/MiuiCameraSound;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    return p1
.end method

.method private loadFromAsset(I)I
    .locals 5

    const-string v0, "IOException occurs when closing Camera Sound AssetFileDescriptor."

    const-string v1, "MiuiCameraSound"

    const/4 v2, 0x0

    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/MiuiCameraSound;->mAssetManager:Landroid/content/res/AssetManager;

    sget-object v4, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object p1, v4, p1

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 119
    iget-object p0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 125
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 127
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 121
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 125
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 127
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :cond_1
    :goto_1
    return p0

    :goto_2
    if-eqz v2, :cond_2

    .line 125
    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 127
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    :cond_2
    :goto_3
    throw p0
.end method

.method private declared-synchronized play(II)V
    .locals 7

    monitor-enter p0

    if-ltz p1, :cond_2

    .line 136
    :try_start_0
    sget-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    if-eq p1, v2, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/MiuiCameraSound;->loadFromAsset(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    goto :goto_0

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 144
    invoke-virtual {p2, v0, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    .line 146
    :goto_0
    iget-object p2, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    iget v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    aput v0, p2, p1

    goto :goto_1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v1, v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/MiuiCameraSound;->mLastPlayTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :goto_1
    monitor-exit p0

    return-void

    .line 137
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sound requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private playSound(II)V
    .locals 2

    .line 182
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/MiuiCameraSound;->mForceSound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mAudioManager:Landroid/media/AudioManager;

    .line 183
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 184
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MiuiCameraSound;->play(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/MiuiCameraSound;->playSound(II)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/MiuiCameraSound;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public getLastSoundPlayTime()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/android/camera/MiuiCameraSound;->mLastPlayTime:J

    return-wide v0
.end method

.method public declared-synchronized load(I)V
    .locals 4

    monitor-enter p0

    if-ltz p1, :cond_3

    .line 101
    :try_start_0
    sget-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 105
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1

    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    invoke-direct {p0, p1}, Lcom/android/camera/MiuiCameraSound;->loadFromAsset(I)I

    move-result v1

    aput v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 102
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public playSound(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/camera/MiuiCameraSound;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    return-void
.end method
