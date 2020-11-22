.class public abstract Lcom/android/camera/module/encoder/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected mFirstFrameTime:J

.field private mFrame:I

.field protected volatile mIsCapturing:Z

.field protected mIsEOS:Z

.field protected mIsReady:Z

.field protected final mListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMuxerStarted:Z

.field private mRequestDrain:I

.field protected volatile mRequestStop:Z

.field protected mSkipFrame:Z

.field protected final mSync:Ljava/lang/Object;

.field protected mThread:Ljava/lang/Thread;

.field protected mTrackIndex:I

.field protected final mWeakMuxer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/encoder/MediaMuxerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private prevOutputPTSUs:J


# direct methods
.method public constructor <init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 442
    iput-wide v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->prevOutputPTSUs:J

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->addEncoder(Lcom/android/camera/module/encoder/MediaEncoder;)V

    .line 103
    iput-object p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 107
    :try_start_0
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 p2, 0x0

    .line 108
    iput-boolean p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsReady:Z

    .line 110
    new-instance p2, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mThread:Ljava/lang/Thread;

    .line 111
    iget-object p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mThread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 112
    iget-boolean p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 114
    :try_start_1
    iget-object p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 116
    :try_start_2
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method protected drain()V
    .locals 10

    .line 317
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-nez v0, :cond_0

    .line 319
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v0, "muxer is unexpectedly null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_1

    return-void

    .line 325
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .line 330
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_11

    .line 331
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 334
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSkipFrame:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mFirstFrameTime:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSkipFrame:Z

    .line 339
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v6, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v7, 0x2710

    invoke-virtual {v4, v6, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 346
    iget-boolean v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsEOS:Z

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x5

    if-le v1, v4, :cond_2

    goto/16 :goto_3

    :cond_6
    const/4 v6, -0x3

    if-ne v4, v6, :cond_7

    .line 352
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v4, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_0

    :cond_7
    const/4 v6, -0x2

    if-ne v4, v6, :cond_b

    .line 356
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v6, "INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-boolean v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMuxerStarted:Z

    if-nez v4, :cond_a

    .line 366
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 367
    invoke-virtual {v0, v4}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mTrackIndex:I

    .line 369
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 370
    :try_start_1
    iget-boolean v6, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    .line 371
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_2

    .line 373
    iput-boolean v5, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMuxerStarted:Z

    .line 374
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->start()Z

    move-result v4

    if-nez v4, :cond_2

    .line 376
    monitor-enter v0

    .line 377
    :cond_8
    :try_start_2
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_9

    const-wide/16 v4, 0x64

    .line 379
    :try_start_3
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 380
    iget-boolean v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_8

    .line 381
    :try_start_4
    monitor-exit v0

    goto/16 :goto_3

    .line 384
    :catch_0
    monitor-exit v0

    goto/16 :goto_3

    .line 386
    :cond_9
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 371
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 362
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "format changed twice"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-gez v4, :cond_c

    .line 391
    iget-object v5, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drain: unexpected status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 393
    :cond_c
    aget-object v6, v3, v4

    if-eqz v6, :cond_10

    .line 398
    iget-object v7, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_d

    .line 403
    iget-object v7, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v8, "drain: BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v7, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 407
    :cond_d
    iget-object v7, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v7, :cond_f

    .line 410
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMuxerStarted:Z

    if-eqz v1, :cond_e

    .line 412
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_6
    iget-boolean v7, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    .line 414
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v7, :cond_e

    .line 416
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSkipFrame:Z

    if-nez v1, :cond_e

    .line 418
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->getPTSUs()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 419
    iget v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mTrackIndex:I

    iget-object v7, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 420
    iget v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mFrame:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mFrame:I

    .line 423
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lcom/android/camera/module/encoder/MediaEncoder;->prevOutputPTSUs:J

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 414
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_e
    :goto_2
    move v1, v2

    .line 429
    :cond_f
    iget-object v5, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 430
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 432
    iput-boolean v2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    goto :goto_3

    .line 396
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoderOutputBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    .line 341
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dequeueOutputBuffer() failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_3
    return-void
.end method

.method protected encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11

    .line 280
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 284
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 287
    aget-object v0, v0, v5

    .line 288
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_2

    .line 290
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    if-gtz p2, :cond_3

    const/4 p1, 0x1

    .line 294
    iput-boolean p1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsEOS:Z

    .line 295
    iget-object p1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string p2, "send BUFFER_FLAG_END_OF_STREAM"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public frameAvailableSoon()Z
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestDrain:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestDrain:I

    .line 134
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v0

    return v2

    .line 130
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frameAvailableSoon: requestStop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 131
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected getPTSUs()J
    .locals 4

    .line 450
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 452
    iget-wide v2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->prevOutputPTSUs:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method join()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v1, "join interrupted"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected release()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 244
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 245
    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v3, "failed releasing MediaCodec"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 254
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 256
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v3, "failed stopping muxer"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    .line 261
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_3

    .line 262
    invoke-interface {v0, p0}, Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/android/camera/module/encoder/MediaEncoder;)V

    .line 264
    :cond_3
    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method public run()V
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 145
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    .line 146
    iput v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestDrain:I

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsReady:Z

    .line 148
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 153
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 154
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    .line 155
    iget v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestDrain:I

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    .line 157
    iget v5, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestDrain:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestDrain:I

    .line 159
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->drain()V

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->signalEndOfInputStream()V

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->drain()V

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->release()V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->drain()V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_2
    iget-boolean v3, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_4

    .line 176
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v3

    .line 178
    :try_start_4
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v3, "encoder thread exiting"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 187
    :try_start_5
    iput-boolean v2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    .line 189
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    .line 182
    :cond_4
    :goto_3
    :try_start_6
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 159
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 149
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0
.end method

.method protected signalEndOfInputStream()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v1, "signalEndOfInputStream"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Lcom/android/camera/module/encoder/MediaEncoder;->getPTSUs()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/camera/module/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method startRecording(J)Z
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mFirstFrameTime:J

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSkipFrame:Z

    const/4 p2, 0x0

    .line 200
    iput p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mFrame:I

    .line 201
    iput-boolean p1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    .line 202
    iput-boolean p2, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    .line 203
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method stopRecording()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 217
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSkipFrame:Z

    const/4 v1, 0x1

    .line 218
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    .line 219
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 220
    monitor-exit v0

    return-void

    .line 215
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
