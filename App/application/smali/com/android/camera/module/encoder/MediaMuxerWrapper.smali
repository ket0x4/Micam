.class public Lcom/android/camera/module/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"


# instance fields
.field private mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

.field private mEncoderCount:I

.field private mIsStarted:Z

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStartedCount:I

.field private mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getMediaMuxer(Ljava/lang/String;)Landroid/media/MediaMuxer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 53
    :goto_0
    iput v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 54
    iput v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    .line 55
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void
.end method


# virtual methods
.method addEncoder(Lcom/android/camera/module/encoder/MediaEncoder;)V
    .locals 3

    .line 129
    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-nez v0, :cond_0

    .line 133
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    goto :goto_0

    .line 131
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "video encoder already added!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_1
    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-nez v0, :cond_4

    .line 138
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    return-void

    .line 136
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "audio encoder already added!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported encoder!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 190
    sget-object v1, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrack: trackNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trackIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return v0

    .line 187
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public join()V
    .locals 2

    .line 99
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "join>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->join()V

    .line 102
    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->join()V

    .line 106
    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    .line 108
    :cond_1
    sget-object p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v0, "join<<<"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->prepare()V

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz p0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->prepare()V

    :cond_1
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method declared-synchronized start()Z
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: startedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    .line 154
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-ne v0, v2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 156
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 158
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "MediaMuxer started"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecording(J)Z
    .locals 3

    .line 74
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording: offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 79
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz p0, :cond_3

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(J)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 168
    :try_start_0
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: startedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    .line 170
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    if-gtz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 172
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 174
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "MediaMuxer stopped"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRecording()V
    .locals 2

    .line 87
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->stopRecording()V

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz p0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->stopRecording()V

    .line 95
    :cond_1
    sget-object p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v0, "stopRecording<<<"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    .line 204
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
