.class public Lcom/android/camera/snap/SnapTrigger;
.super Ljava/lang/Object;
.source "SnapTrigger.java"

# interfaces
.implements Lcom/android/camera/snap/SnapCamera$SnapStatusListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapTrigger"

.field private static sInstance:Lcom/android/camera/snap/SnapTrigger;


# instance fields
.field private mBurstCount:I

.field private mCamera:Lcom/android/camera/snap/SnapCamera;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLongPressRunnable:Ljava/lang/Runnable;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximityLock:Lcom/android/camera/ProximitySensorLock;

.field private mRequestQuit:Z

.field private final mSnapRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    .line 39
    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mPowerManager:Landroid/os/PowerManager;

    .line 44
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapTrigger;->mRequestQuit:Z

    .line 140
    new-instance v0, Lcom/android/camera/snap/SnapTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapTrigger$1;-><init>(Lcom/android/camera/snap/SnapTrigger;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Lcom/android/camera/snap/SnapTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapTrigger$2;-><init>(Lcom/android/camera/snap/SnapTrigger;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mLongPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/snap/SnapTrigger;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/android/camera/snap/SnapTrigger;->mRequestQuit:Z

    return p0
.end method

.method static synthetic access$1008(Lcom/android/camera/snap/SnapTrigger;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/snap/SnapTrigger;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->initCamera()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/snap/SnapTrigger;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/PowerManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/snap/SnapTrigger;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->shouldQuitSnap()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/snap/SnapTrigger;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->shutdownWatchDog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/snap/SnapTrigger;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->vibratorShort()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/snap/SnapTrigger;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/snap/SnapTrigger;->trackSnapInfo(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/snap/SnapTrigger;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/snap/SnapTrigger;->triggerWatchdog(Z)V

    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcom/android/camera/snap/SnapTrigger;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    if-eqz v1, :cond_2

    .line 78
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {v1}, Lcom/android/camera/snap/SnapTrigger;->onDestroy()V

    .line 79
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    .line 81
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iget-object v1, v1, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iget-object v1, v1, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v1}, Lcom/android/camera/snap/SnapCamera;->release()V

    .line 83
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iput-object v2, v1, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    .line 86
    :cond_0
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iget-object v1, v1, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 87
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iget-object v1, v1, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    :cond_1
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iput-object v2, v1, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    .line 90
    sget-object v1, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iput-object v2, v1, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    .line 92
    sput-object v2, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lcom/android/camera/snap/SnapTrigger;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {v0}, Lcom/android/camera/snap/SnapTrigger;-><init>()V

    sput-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    return-object v0
.end method

.method private initCamera()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v0, Lcom/android/camera/snap/SnapCamera;

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/snap/SnapCamera;-><init>(Landroid/content/Context;Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    return-void
.end method

.method public static notifyForDetail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 261
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/camera/GeneralUtils;->notifyForDetail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private onDestroy()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    return-void
.end method

.method private shouldQuitSnap()Z
    .locals 3

    .line 128
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {}, Lcom/android/camera/Util;->isNonUI()Z

    move-result p0

    .line 130
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldQuitSnap isNonUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string v0, "\u65b9\u5f0f"

    const-string v1, "NonUI\u8857\u62cd"

    .line 132
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "counter"

    const-string v2, "pocket_mode_enter"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStatUtil;->track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return p0

    .line 137
    :cond_1
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->shouldQuitSnap()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shutdownWatchDog()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    const-string v1, "watch dog Off"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private trackSnapInfo(Z)V
    .locals 1

    .line 180
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "video"

    goto :goto_0

    :cond_0
    const-string p1, "photo"

    :goto_0
    const-string v0, "mode"

    .line 181
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "capture"

    const-string v0, "snap_camera"

    .line 182
    invoke-static {p1, v0, p0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private triggerWatchdog(Z)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "watch dog On -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1388

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private vibrator([J)V
    .locals 1

    .line 253
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const/4 v0, -0x1

    .line 254
    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private vibratorShort()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 248
    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapTrigger;->vibrator([J)V

    return-void

    :array_0
    .array-data 8
        0xa
        0x14
    .end array-data
.end method


# virtual methods
.method public handleKeyEvent(IIJ)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x19

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p1, p3, :cond_2

    if-nez p2, :cond_1

    .line 103
    iput-boolean p4, p0, Lcom/android/camera/snap/SnapTrigger;->mRequestQuit:Z

    .line 104
    iget-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/snap/SnapTrigger;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 105
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    .line 104
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 107
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapTrigger;->mRequestQuit:Z

    .line 108
    iget-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/snap/SnapTrigger;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x1a

    if-ne p1, p2, :cond_3

    .line 115
    iput-boolean v0, p0, Lcom/android/camera/snap/SnapTrigger;->mRequestQuit:Z

    .line 116
    iget-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/snap/SnapTrigger;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    move v0, p4

    .line 124
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapTrigger;->triggerWatchdog(Z)V

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    const-string p2, "power"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mPowerManager:Landroid/os/PowerManager;

    .line 57
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Lcom/android/camera/ProximitySensorLock;

    iget-object p2, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    .line 59
    sget-object p1, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init, create a new instance -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {p1}, Lcom/android/camera/ProximitySensorLock;->startWatching()V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDone(Landroid/net/Uri;)V
    .locals 4

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapTrigger;->triggerWatchdog(Z)V

    .line 233
    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->vibratorShort()V

    .line 235
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget v0, p0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0082

    .line 244
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result p0

    .line 243
    invoke-static {v0, p1, v1, v2, p0}, Lcom/android/camera/snap/SnapTrigger;->notifyForDetail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
