.class public Lcom/android/camera/module/encoder/MediaAudioEncoder;
.super Lcom/android/camera/module/encoder/MediaEncoder;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;
    }
.end annotation


# static fields
.field private static final AUDIO_SOURCES:[I

.field private static final TAG:Ljava/lang/String; = "MediaAudioEncoder"


# instance fields
.field protected final mAudioSource:I

.field private mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

.field protected final mMediaCodecLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 128
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x5
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    .line 44
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    .line 54
    iput p3, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioSource:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createAudioSource(II)Landroid/media/AudioRecord;
    .locals 6

    .line 164
    new-instance p0, Landroid/media/AudioRecord;

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 166
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private initAudioRecord()Landroid/media/AudioRecord;
    .locals 5

    const/4 v0, 0x2

    const v1, 0xac44

    const/16 v2, 0x10

    .line 135
    invoke-static {v1, v2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    const/16 v2, 0x6400

    if-ge v2, v1, :cond_0

    .line 139
    div-int/lit16 v1, v1, 0x400

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit8 v2, v1, 0x2

    :cond_0
    const/4 v0, 0x0

    .line 145
    iget v1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioSource:I

    if-lez v1, :cond_1

    .line 146
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->createAudioSource(II)Landroid/media/AudioRecord;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 153
    :cond_2
    sget-object v1, Lcom/android/camera/module/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget v0, v1, v4

    .line 154
    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->createAudioSource(II)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 239
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 242
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 243
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 246
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 247
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 249
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method


# virtual methods
.method protected prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "prepare>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMuxerStarted:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsEOS:Z

    const-string v0, "audio/mp4a-latm"

    .line 64
    invoke-static {v0}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 66
    sget-object p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "no appropriate codec for audio/mp4a-latm"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    sget-object v2, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected codec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0xac44

    const/4 v2, 0x1

    .line 71
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v3, 0x2

    const-string v4, "aac-profile"

    .line 72
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v3, 0x10

    const-string v4, "channel-mask"

    .line 73
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v3, 0xfa00

    const-string v4, "bitrate"

    .line 74
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "channel-count"

    .line 75
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 76
    sget-object v3, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 78
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 80
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0, p0}, Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/android/camera/module/encoder/MediaEncoder;)V

    .line 83
    :cond_1
    sget-object p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string v0, "prepare<<<"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected release()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    .line 123
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-super {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->release()V

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected startRecording(J)Z
    .locals 3

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(J)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    if-nez v0, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->initAudioRecord()Landroid/media/AudioRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    sget-object p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    const-string p1, "failed to initialize AudioRecord"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 100
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v1, 0x3

    .line 101
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 102
    new-instance v1, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/android/camera/module/encoder/MediaAudioEncoder;Landroid/media/AudioRecord;)V

    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    .line 103
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mAudioThread:Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    sget-object p1, Lcom/android/camera/module/encoder/MediaAudioEncoder;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move p1, p2

    :goto_0
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 113
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_3
    return p1
.end method
