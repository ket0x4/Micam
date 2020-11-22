.class Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field final synthetic this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/encoder/MediaAudioEncoder;Landroid/media/AudioRecord;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, -0x13

    .line 187
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/android/camera/module/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_3

    .line 191
    invoke-static {}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audioThread>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x400

    .line 192
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 196
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v2, v2, Lcom/android/camera/module/encoder/MediaEncoder;->mSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 197
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-boolean v3, v3, Lcom/android/camera/module/encoder/MediaEncoder;->mRequestStop:Z

    if-eqz v3, :cond_1

    .line 198
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->frameAvailableSoon()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 217
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 200
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 201
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 202
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 205
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 207
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v3, v3, Lcom/android/camera/module/encoder/MediaAudioEncoder;->mMediaCodecLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 208
    :try_start_7
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-boolean v4, v4, Lcom/android/camera/module/encoder/MediaEncoder;->mSkipFrame:Z

    if-nez v4, :cond_2

    .line 209
    iget-object v4, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v5, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v5}, Lcom/android/camera/module/encoder/MediaEncoder;->getPTSUs()J

    move-result-wide v5

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/android/camera/module/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 211
    :cond_2
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 212
    :try_start_8
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/android/camera/module/encoder/MediaAudioEncoder;

    invoke-virtual {v2}, Lcom/android/camera/module/encoder/MediaEncoder;->frameAvailableSoon()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 211
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_1
    move-exception v0

    .line 200
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    .line 217
    :try_start_d
    iget-object v1, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 221
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 224
    invoke-static {}, Lcom/android/camera/module/encoder/MediaAudioEncoder;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "audioThread<<<"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3
    move-exception v0

    .line 221
    iget-object p0, p0, Lcom/android/camera/module/encoder/MediaAudioEncoder$AudioThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    throw v0
.end method
