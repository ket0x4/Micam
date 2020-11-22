.class public Lcom/android/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sHolder:Lcom/android/camera/CameraHolder;


# instance fields
.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraId:I

.field private mCameraOpened:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeepBeforeTime:J

.field private mLastMode:I

.field private final mOpenCloseLock:Ljava/lang/Object;

.field private mOriginalParameters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/Camera$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mOpenCloseLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraHolder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v1, Lcom/android/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraHolder$MyHandler;-><init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraHolder;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    return p0
.end method

.method private cloneParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 208
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    return-object p0
.end method

.method public static injectMockCamera([Landroid/hardware/Camera$CameraInfo;[Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0

    .line 110
    sput-object p0, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 111
    sput-object p1, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    .line 112
    new-instance p0, Lcom/android/camera/CameraHolder;

    invoke-direct {p0}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object p0, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/camera/CameraHolder;
    .locals 2

    const-class v0, Lcom/android/camera/CameraHolder;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/android/camera/CameraHolder;

    invoke-direct {v1}, Lcom/android/camera/CameraHolder;-><init>()V

    sput-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;

    .line 80
    :cond_0
    sget-object v1, Lcom/android/camera/CameraHolder;->sHolder:Lcom/android/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p0
.end method

.method public getCurrentCameraId()I
    .locals 0

    .line 284
    iget p0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    return p0
.end method

.method public getLastMode()I
    .locals 0

    .line 288
    iget p0, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    return p0
.end method

.method public injectDummyParameters(Lcom/android/camera/CameraManager$CameraProxy;I)Landroid/hardware/Camera$Parameters;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, p2}, Lcom/android/camera/CameraHolder;->cloneParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-object p0
.end method

.method public declared-synchronized keep()V
    .locals 4

    monitor-enter p0

    .line 275
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(IZI)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraHolder"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open.cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 134
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/camera/CameraDataContainer;->getActualOpenCameraId(II)I

    move-result p1

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    const/16 v0, 0xa0

    if-eq p2, v0, :cond_1

    iget p2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    if-eq p2, p1, :cond_2

    .line 138
    :cond_1
    iget-object p2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p2}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    const/4 p2, 0x0

    .line 139
    iput-object p2, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 p2, -0x1

    .line 140
    iput p2, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    const/4 p2, 0x0

    .line 141
    iput p2, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    .line 143
    :cond_2
    iget-object p2, p0, Lcom/android/camera/CameraHolder;->mOpenCloseLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    :try_start_2
    const-string v0, "CameraHolder"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/android/camera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-nez v0, :cond_3

    .line 148
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager;->openCamera(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    goto :goto_0

    .line 150
    :cond_3
    sget-object v0, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_5

    .line 153
    sget-object v0, Lcom/android/camera/CameraHolder;->mMockCamera:[Lcom/android/camera/CameraManager$CameraProxy;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 155
    :goto_0
    iput p1, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 156
    iput p3, p0, Lcom/android/camera/CameraHolder;->mLastMode:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :try_start_3
    iget-object p3, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    if-nez p3, :cond_4

    .line 163
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    .line 167
    :cond_4
    iget-object p3, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7

    .line 168
    iget-object p3, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraHolder;->cloneParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 151
    :cond_5
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception p1

    :try_start_5
    const-string p3, "CameraHolder"

    const-string v0, "fail to connect Camera"

    .line 158
    invoke-static {p3, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    new-instance p3, Lcom/android/camera/CameraHardwareException;

    invoke-direct {p3, p1}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :try_start_6
    const-string p1, "CameraHolder"

    .line 173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reconnect camera "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->reconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    :cond_7
    :goto_1
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 p1, 0x1

    .line 182
    :try_start_8
    iput-boolean p1, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 183
    iget-object p2, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 p1, 0x0

    .line 184
    iput-wide p1, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    .line 189
    iget-object p1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object p1

    :catch_1
    move-exception p1

    :try_start_9
    const-string p3, "CameraHolder"

    const-string v0, "reconnect failed."

    .line 176
    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance p3, Lcom/android/camera/CameraHardwareException;

    invoke-direct {p3, p1}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catchall_0
    move-exception p1

    .line 180
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Z)V
    .locals 5

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    const-string p1, "CameraHolder"

    const-string v0, "null camera device"

    .line 232
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 237
    iget-wide v3, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long p1, v0, v3

    if-gez p1, :cond_2

    .line 238
    iget-boolean p1, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-eqz p1, :cond_1

    .line 239
    iput-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 241
    iget-object p1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/android/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    monitor-exit p0

    return-void

    .line 247
    :cond_2
    :try_start_2
    iput-boolean v2, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    .line 249
    iget-object p1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    .line 250
    iget-object p1, p0, Lcom/android/camera/CameraHolder;->mOpenCloseLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 252
    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 256
    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 257
    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->release()V

    .line 258
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, -0x1

    .line 261
    :try_start_4
    iput p1, p0, Lcom/android/camera/CameraHolder;->mCameraId:I

    .line 262
    iput v2, p0, Lcom/android/camera/CameraHolder;->mLastMode:I

    .line 263
    iget-object p1, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    if-eqz p1, :cond_3

    .line 264
    iget-object p1, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 265
    iput-object v0, p0, Lcom/android/camera/CameraHolder;->mOriginalParameters:Landroid/util/SparseArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 267
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 258
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tryOpen(II)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 219
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/CameraHolder;->mCameraOpened:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/camera/CameraHolder;->open(IZI)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "eng"

    .line 223
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 226
    monitor-exit p0

    return-object v0

    .line 224
    :cond_1
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
