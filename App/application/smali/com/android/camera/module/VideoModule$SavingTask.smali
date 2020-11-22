.class Lcom/android/camera/module/VideoModule$SavingTask;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingTask"
.end annotation


# instance fields
.field private mRestart:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 1253
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1256
    iput-boolean p2, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V
    .locals 0

    .line 1252
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1261
    invoke-static {}, Lcom/android/camera/module/VideoModule;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SavingTask run mMediaRecorderRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v2, v2, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$202(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1263
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 1267
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1268
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->subStopRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1269
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v0, :cond_1

    .line 1270
    new-instance v0, Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1271
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$404(Lcom/android/camera/module/VideoModule;)I

    .line 1272
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 1273
    sget-object v4, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v4}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 1275
    :goto_1
    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-nez v4, :cond_3

    .line 1276
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v4, :cond_2

    const/4 v4, 0x3

    .line 1277
    invoke-virtual {v0, v4}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 1279
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1281
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$400(Lcom/android/camera/module/VideoModule;)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$404(Lcom/android/camera/module/VideoModule;)I

    .line 1283
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4, v0}, Lcom/android/camera/module/VideoModule;->access$500(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1284
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0, v3}, Lcom/android/camera/module/VideoModule;->access$202(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1287
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v0, :cond_5

    .line 1288
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v1, v0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1289
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1290
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1291
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->access$702(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    .line 1292
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1296
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0, v2}, Lcom/android/camera/module/VideoModule;->access$302(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1297
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.stop_video_recording"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1298
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v0, Lcom/android/camera/module/VideoBase;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_9

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1299
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v4, :cond_7

    .line 1301
    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v4, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    goto :goto_3

    .line 1303
    :cond_7
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1304
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1306
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    new-instance v3, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;

    invoke-direct {v3, v0}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;-><init>(Lcom/android/camera/module/VideoModule;)V

    new-array v4, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/VideoModule;->access$802(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1310
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v0, Lcom/android/camera/module/VideoBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, v0, Lcom/android/camera/module/VideoBase;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1311
    invoke-static {}, Lcom/android/camera/module/VideoModule;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "listen none"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1314
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1315
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$900(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1316
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoBase;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$900(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1317
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v1, v3, Lcom/android/camera/module/VideoBase;->mMediaRecorderRecording:Z

    .line 1318
    invoke-static {}, Lcom/android/camera/module/VideoModule;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop recording at SavingTask, space="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/storage/Storage;->getLeftSpace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {p0, v2}, Lcom/android/camera/module/VideoModule;->access$702(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1320
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 1323
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v3}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 1324
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {p0, v2}, Lcom/android/camera/module/VideoModule;->access$702(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;

    :goto_4
    return-void
.end method
