.class public Lcom/android/camera/AutoLockManager;
.super Ljava/lang/Object;
.source "AutoLockManager.java"


# static fields
.field public static HIBERNATION_TIMEOUT:I = 0x3

.field private static MILLIS_IN_MINUTE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "AutoLockManager"

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/android/camera/AutoLockManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraAlwaysKeepScreenOn:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHibernationTimeOut:J

.field private mPaused:Z

.field private mScreenOffTimeOut:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3a98

    .line 24
    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    .line 35
    iput-object p1, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    const-string v1, "camera.debug.timeout_seconds"

    .line 36
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "camera_always_keep_screen_on"

    .line 37
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    if-lez v1, :cond_0

    const-wide/16 v2, 0x3e8

    int-to-long v0, v1

    mul-long/2addr v0, v2

    .line 39
    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    goto :goto_0

    .line 41
    :cond_0
    sget-wide v0, Lcom/android/camera/AutoLockManager;->MILLIS_IN_MINUTE:J

    invoke-static {}, Lcom/android/camera/Device;->getHibernationTimeout()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    .line 43
    :goto_0
    sget-object v0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHibernationTimeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenOffTimeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {p0, p1}, Lcom/android/camera/AutoLockManager;->updateScreenOffTimeout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AutoLockManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->lockScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/AutoLockManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->hibernate()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;
    .locals 2

    .line 61
    sget-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoLockManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/camera/AutoLockManager;

    invoke-direct {v0, p0}, Lcom/android/camera/AutoLockManager;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private hibernate()V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-nez v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->onHibernate()V

    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "my_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v1, Lcom/android/camera/AutoLockManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/camera/AutoLockManager$1;-><init>(Lcom/android/camera/AutoLockManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private lockScreen()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/AutoLockManager;

    if-eqz p0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private updateScreenOffTimeout(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    .line 49
    sget-object p0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    const-string p1, "updateScreenOffTimeout context is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_off_timeout"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    sget-object p1, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public hibernateDelayed()V
    .locals 4

    .line 138
    iget-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mCameraAlwaysKeepScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->initHandler()V

    .line 148
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/Camera;

    .line 151
    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isPanoramaRecording()Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/camera/AutoLockManager;->mHibernationTimeOut:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    sget-object p0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    const-string v0, "send MSG_HIBERNATE"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_2
    sget-object p0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPanoramaRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Lcom/android/camera/Camera;->isPanoramaRecording()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    .line 83
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/camera/AutoLockManager;->updateScreenOffTimeout(Landroid/content/Context;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    return-void
.end method

.method public removeMessage()V
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 123
    sget-object p0, Lcom/android/camera/AutoLockManager;->TAG:Ljava/lang/String;

    const-string v0, "removeMessage"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
