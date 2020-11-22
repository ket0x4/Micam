.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$LogThread;,
        Lcom/android/camera/Camera$WatchDogThread;,
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera"

.field private static final sCameraSetupScheduler:Lio/reactivex/Scheduler;


# instance fields
.field private cameraSetupConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

.field private mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

.field private mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

.field private mDebugThread:Lcom/android/camera/Camera$LogThread;

.field private mDelayReleaseCamera:Z

.field private mDidRegister:Z

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mImageSaverStatusListener:Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;

.field private mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

.field private mLastIgnoreKey:I

.field private mLastKeyEventTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mPortraitNewBieShowing:Z

.field private mPowerManager:Landroid/os/IPowerManager;

.field private mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSDReceiver:Landroid/content/BroadcastReceiver;

.field private mSDRegister:Z

.field private mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mStartControl:Lcom/android/camera/module/loader/StartControl;

.field private mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

.field private mTick:I

.field private mWatchDog:Ljava/lang/Thread;

.field private newbieDialogFragmentTag:Ljava/lang/String;

.field private final tickerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v0

    .line 168
    sput-object v0, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 127
    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 142
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/android/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    .line 1502
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1605
    new-instance v0, Lcom/android/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1623
    new-instance v0, Lcom/android/camera/Camera$11;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$11;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Camera;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/android/camera/Camera;->mTick:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/Camera;I)I
    .locals 0

    .line 119
    iput p1, p0, Lcom/android/camera/Camera;->mTick:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)Lcom/android/camera/module/loader/StartControl;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/Camera;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 119
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/Camera;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/camera/Camera;->onDisplayRotationChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/Camera;)Lcom/android/camera/fragment/BaseFragmentDelegate;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;Z)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    return-void
.end method

.method private bindGalleryService()V
    .locals 3

    .line 1514
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.gallery"

    .line 1515
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    iget-object v1, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1518
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "bindGalleryService error."

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private checkNonUIOrRegisterProximitySensor()Z
    .locals 3

    .line 371
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isQuickLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-static {}, Lcom/android/camera/Util;->isNonUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isFromVolumeKey()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-static {}, Lcom/android/camera/Util;->isNonUI()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u65b9\u5f0f"

    const-string v1, "NonUI\u97f3\u91cf\u952e"

    .line 374
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "counter"

    const-string v2, "pocket_mode_enter"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStatUtil;->track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "Finish from NonUI mode."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 384
    :cond_0
    new-instance v0, Lcom/android/camera/ProximitySensorLock;

    invoke-direct {v0, p0}, Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    .line 386
    iget-object p0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {p0}, Lcom/android/camera/ProximitySensorLock;->startWatching()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private closeCameraSetup()Z
    .locals 3

    .line 1390
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1391
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1392
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1393
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1398
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private createNewModule(I)Lcom/android/camera/module/Module;
    .locals 2

    .line 962
    invoke-static {p1}, Lcom/android/camera/module/ModuleManager;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    invoke-interface {v0, p0}, Lcom/android/camera/module/Module;->setActivity(Lcom/android/camera/Camera;)V

    .line 967
    iget p1, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    iget p0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-interface {v0, p1, p0}, Lcom/android/camera/module/Module;->preTransferOrientation(II)V

    return-object v0

    .line 964
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid module index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private currentIsMainThread()Z
    .locals 1

    .line 464
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideHibernationFragment()V
    .locals 1

    .line 1673
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "Hibernation"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1674
    instance-of v0, p0, Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 1675
    check-cast p0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private hideNewBie()V
    .locals 1

    .line 1452
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1453
    instance-of v0, p0, Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 1454
    check-cast p0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private onDisplayRotationChanged()V
    .locals 1

    .line 1246
    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1250
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "RotateHint"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 1252
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;->animateOut(I)V

    :cond_1
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 1616
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.action.VOICE_COMMAND"

    .line 1617
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1619
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1620
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    return-void
.end method

.method private registerSDReceiver()V
    .locals 2

    .line 1633
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 1634
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 1635
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1636
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 1637
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 1638
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 1639
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1640
    iget-object v1, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1641
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mSDRegister:Z

    return-void
.end method

.method private removeNotRestoredFragments()V
    .locals 6

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 195
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 199
    instance-of v3, v2, Lcom/android/camera/fragment/FragmentBeauty;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    if-eqz v3, :cond_0

    .line 200
    :cond_1
    sget-object v3, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove restored fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 205
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_3
    return-void
.end method

.method private resumeCamera()V
    .locals 7

    .line 642
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "resumeCamera begin"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 646
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->isAlive(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    .line 648
    invoke-virtual {p0}, Lcom/android/camera/Camera;->registerProtocol()V

    goto/16 :goto_3

    .line 650
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 652
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 653
    iput-boolean v2, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    goto/16 :goto_2

    .line 655
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    .line 656
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v4}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v4}, Lcom/android/camera/CameraIntentManager;->isActionPerformed()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    .line 657
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v6

    invoke-virtual {v0, v5, v4, v6, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZ)Landroid/support/v4/util/Pair;

    .line 658
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v4

    if-eqz v1, :cond_6

    .line 660
    iget-object v5, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const v6, 0x7f090019

    invoke-virtual {v5, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v5

    const/16 v6, 0xff3

    if-ne v5, v6, :cond_4

    move v2, v3

    :cond_4
    if-ne v1, v4, :cond_5

    if-eqz v2, :cond_5

    .line 663
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->resumeCurrentMode(I)V

    return-void

    :cond_5
    if-eqz v2, :cond_7

    .line 667
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 668
    iget-object v1, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateEvent(I)V

    goto :goto_1

    .line 672
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 677
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 678
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 679
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/camera/data/provider/DataProvider;->setTimeOut(Z)V

    :cond_8
    const/4 v3, 0x2

    .line 684
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 685
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->unRegisterProtocol()V

    .line 686
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onStop()V

    .line 687
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 688
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/module/Module;->setActivity(Lcom/android/camera/Camera;)V

    .line 690
    :cond_a
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 691
    invoke-virtual {v1, v3}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    .line 692
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/StartControl;->setLastMode(I)Lcom/android/camera/module/loader/StartControl;

    .line 690
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 694
    :goto_3
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "resumeCamera end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 673
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->onResume()V

    return-void
.end method

.method private setBrightnessRampRate(I)V
    .locals 0

    return-void
.end method

.method private setScreenEffect(Z)V
    .locals 0

    .line 1576
    invoke-static {p1}, Lcom/android/camera/Util;->setScreenEffect(Z)V

    return-void
.end method

.method private setTranslucentNavigation(Z)V
    .locals 1

    .line 633
    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 634
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 635
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x300

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 p1, -0x80000000

    .line 637
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method private setupCamera(Lcom/android/camera/module/loader/StartControl;)V
    .locals 7

    .line 472
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    .line 474
    new-instance v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;

    iget v1, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    iget v3, p1, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v4, Lcom/android/camera/module/BaseModule;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/module/loader/FunctionCameraPrepare;-><init>(IIILcom/android/camera/module/BaseModule;)V

    .line 478
    new-instance v1, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;

    iget v2, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v1, v2}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;-><init>(I)V

    .line 479
    new-instance v2, Lcom/android/camera/module/loader/FunctionModuleSetup;

    iget v3, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v2, v3}, Lcom/android/camera/module/loader/FunctionModuleSetup;-><init>(I)V

    .line 480
    new-instance v3, Lcom/android/camera/module/loader/FunctionDataSetup;

    iget v4, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v3, v4}, Lcom/android/camera/module/loader/FunctionDataSetup;-><init>(I)V

    .line 481
    new-instance v4, Lcom/android/camera/module/loader/FunctionUISetup;

    iget v5, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v4, v5}, Lcom/android/camera/module/loader/FunctionUISetup;-><init>(I)V

    .line 483
    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v5

    sget-object v6, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 489
    invoke-virtual {v5, v6}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    .line 490
    invoke-virtual {v5, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 491
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-static {v1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v1

    sget-object v5, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 495
    invoke-virtual {v1, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 498
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportStartupOptimize()Z

    move-result v5

    if-eqz v5, :cond_1

    iget p1, p1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    const/16 v5, 0xa3

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    new-instance p1, Lcom/android/camera/Camera$5;

    invoke-direct {p1, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v1, p1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Single;->mergeWith(Lio/reactivex/SingleSource;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    .line 516
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 521
    invoke-virtual {p1, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 522
    invoke-virtual {p1, v3}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 523
    invoke-virtual {v4}, Lcom/android/camera/module/loader/FunctionUISetup;->getWorkThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 524
    invoke-virtual {p1, v4}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    .line 525
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 500
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/camera/Camera$3;

    invoke-direct {p1, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    .line 505
    invoke-virtual {p1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 506
    invoke-virtual {p1, v3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 507
    invoke-virtual {v4}, Lcom/android/camera/module/loader/FunctionUISetup;->getWorkThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 508
    invoke-virtual {p1, v4}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    .line 509
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method

.method private shouldReleaseLater()Z
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->shouldReleaseLater()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDebug()V
    .locals 2

    .line 1332
    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1334
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1336
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$LogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$LogThread;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    .line 1337
    iget-object p0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private showHibernationFragment()V
    .locals 3

    .line 1665
    new-instance v0, Lcom/android/camera/fragment/dialog/HibernationFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/HibernationFragment;-><init>()V

    const/4 v1, 0x2

    const v2, 0x7f100005

    .line 1666
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 1667
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "Hibernation"

    .line 1668
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1669
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private switchEdgeFingerMode(Z)V
    .locals 1

    .line 1285
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1286
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1290
    new-instance p1, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    .line 1291
    iget-object p0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1293
    :cond_1
    iget-object p1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    .line 1294
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1295
    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    :cond_2
    :goto_0
    return-void
.end method

.method private static tryCreateCameraFolder(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "Camera"

    .line 1681
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p0

    .line 1682
    invoke-virtual {p0, v0}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1683
    invoke-virtual {p0, v0}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1686
    :catch_0
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "Failed to create camera folder "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unbindGalleryService()V
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/android/camera/Camera;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public changeRequestOrientation()V
    .locals 1

    .line 1379
    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1382
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 1383
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1385
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/ProximitySensorLock;->intercept(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 987
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1083
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_1

    .line 1088
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1091
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public getCapturePosture()I
    .locals 0

    .line 1281
    iget-object p0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result p0

    return p0
.end method

.method public getCurrentModuleIndex()I
    .locals 1

    .line 1110
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .locals 0

    .line 1258
    iget-object p0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method public getImplFactory()Lcom/android/camera/module/impl/ImplFactory;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    return-object p0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .locals 0

    .line 1262
    iget-object p0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object p0
.end method

.method public isCurrentModuleAlive()Z
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isCreated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanoramaRecording()Z
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-static {p0}, Lcom/android/camera/module/BaseModule;->isModulePanoramaShooting(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoRecording()Z
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-static {p0}, Lcom/android/camera/module/BaseModule;->isModuleRecording(Lcom/android/camera/module/Module;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public markPortraitNewBieDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 1459
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPortraitNewBieShowing:Z

    return-void
.end method

.method protected notifyOnFirstFrameArrived(I)V
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 1476
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    .line 1477
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/animation/AnimationComposite;->notifyAfterFirstFrameArrived(I)V

    .line 1478
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/module/Module;->enableCameraControls(Z)V

    .line 1481
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p1

    const/16 v1, 0xa3

    if-eq p1, v1, :cond_1

    .line 1482
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p1

    const/16 v1, 0xa5

    if-eq p1, v1, :cond_1

    return-void

    .line 1485
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isFrontCameraAtBottom()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1488
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 1491
    :cond_3
    iget p1, p0, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    if-eqz p1, :cond_4

    return-void

    .line 1494
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const-string v1, "pref_front_camera_first_use_hint_shown_key"

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1495
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const/4 v0, 0x0

    .line 1496
    invoke-interface {p1, v1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 1497
    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    const/4 p1, 0x2

    .line 1498
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->showNewBie(I)Z

    :cond_5
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1692
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 1693
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/FileCompat;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1695
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/Camera;->tryCreateCameraFolder(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1697
    :cond_0
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onActivityResult documents permission not granted"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1698
    invoke-static {p0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    :goto_0
    return-void
.end method

.method public onAwaken()V
    .locals 2

    .line 1659
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onAwaken"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->requestAwaken()V

    .line 1661
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 976
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 265
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraAppImpl;

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 271
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->isApplicationFirstLaunched()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackAppLunchTimeStart(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->recordStartTime()V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    .line 274
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraIntentManager;->setReferer(Landroid/app/Activity;)V

    .line 275
    invoke-static {p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    invoke-super {p0, v1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f01a1

    .line 280
    invoke-static {p0, p1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 281
    sget-object p1, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "isInMultiWindowMode call finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-super {p0, v1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->trackVoiceControl(Landroid/content/Intent;)V

    .line 299
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_3

    .line 303
    invoke-direct {p0}, Lcom/android/camera/Camera;->removeNotRestoredFragments()V

    .line 306
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 308
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v10

    .line 309
    new-instance p1, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v9

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/Module;ZLcom/android/camera/CameraScreenNail;Landroid/content/Intent;Landroid/os/Handler;ZZ)V

    .line 309
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 311
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 317
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkNonUIOrRegisterProximitySensor()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const p1, 0x7f0b005b

    .line 319
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090103

    .line 322
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const p1, 0x7f090025

    .line 323
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    const p1, 0x7f09011d

    .line 324
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V9EdgeShutterView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

    const p1, 0x7f090124

    .line 325
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V9SmartShutterButton;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    .line 326
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/V9SmartShutterButton;->setSmartShutterListener(Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;)V

    const p1, 0x7f090024

    .line 327
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CameraRootView;

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    .line 329
    sget-boolean p1, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz p1, :cond_6

    .line 330
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    .line 331
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 332
    sget v0, Lcom/android/camera/Util;->sNotchHeight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_6
    const/4 p1, 0x0

    .line 337
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)V

    .line 338
    new-instance p1, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-direct {p1, p0}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;-><init>(Lcom/android/camera/module/loader/SurfaceStateListener;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    .line 339
    invoke-virtual {p0}, Lcom/android/camera/Camera;->registerProtocol()V

    .line 342
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result p1

    if-nez p1, :cond_7

    .line 344
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/permission/PermissionManager;->requestCameraRuntimePermissions(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 346
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "request camera peremission failed"

    invoke-static {v0, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 351
    :cond_7
    :goto_0
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    const-string p1, "power"

    .line 352
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/IPowerManager;

    .line 353
    new-instance p1, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    .line 354
    new-instance p1, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {p1, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 355
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result p1

    if-nez p1, :cond_8

    .line 356
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p1

    :cond_8
    const/4 p1, 0x1

    .line 357
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setTranslucentNavigation(Z)V

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/EffectChangedListenerController;->setHoldKey(I)V

    .line 360
    invoke-direct {p0}, Lcom/android/camera/Camera;->showDebug()V

    .line 361
    invoke-static {}, Lcom/android/camera/ThermalDetector;->instance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/ThermalDetector;->onCreate(Landroid/content/Context;)V

    .line 362
    sget-object p1, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onCreate end"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance p1, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object p1, p0, Lcom/android/camera/Camera;->mImageSaverStatusListener:Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 909
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaverStatusListener:Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;

    .line 912
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    if-eqz v1, :cond_0

    .line 913
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V9SmartShutterButton;->setSmartShutterListener(Lcom/android/camera/ui/V9SmartShutterButton$SmartShutterListener;)V

    .line 914
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    .line 916
    :cond_0
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->removeInstance(Landroid/content/Context;)V

    .line 917
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    .line 918
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->unRegisterProtocol()V

    .line 922
    invoke-static {}, Lcom/android/camera/ThermalDetector;->instance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->onDestroy()V

    .line 923
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v1, :cond_2

    .line 924
    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    .line 926
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v1, :cond_3

    .line 927
    invoke-virtual {v1}, Lcom/android/camera/SensorStateManager;->onDestroy()V

    .line 930
    :cond_3
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    .line 931
    iput-object v0, p0, Lcom/android/camera/Camera;->mPowerManager:Landroid/os/IPowerManager;

    .line 932
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->onDestroy(Lcom/android/camera/ActivityBase;)V

    .line 933
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/EffectChangedListenerController;->removeEffectChangedListenerMap(I)V

    .line 934
    iget-object v1, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 935
    invoke-virtual {v1, v2}, Lcom/android/camera/Camera$LogThread;->setRunFlag(Z)V

    .line 937
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v1, :cond_5

    .line 938
    invoke-virtual {v1}, Lcom/android/camera/ProximitySensorLock;->destroy()V

    .line 940
    :cond_5
    sget-object v1, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v1}, Lio/reactivex/Scheduler;->shutdown()V

    .line 941
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 942
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->dismissSystemChoiceDialog()V

    .line 944
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    if-eqz v1, :cond_7

    .line 945
    invoke-virtual {v1}, Lcom/android/camera/CameraIntentManager;->destroy()V

    .line 946
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    .line 948
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraIntentManager;->removeAllInstance()V

    .line 949
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHibernate()V
    .locals 2

    .line 1645
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1649
    :cond_0
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onHibernate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1651
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->setDeparted()V

    .line 1653
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->showHibernationFragment()V

    .line 1654
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->requestHibernate()V

    .line 1655
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraHolder;->release(Z)V

    return-void

    .line 1646
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "Activity already paused, do nothing."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    const/16 v3, 0x57

    const/16 v4, 0x19

    const/16 v5, 0x18

    const/16 v6, 0x58

    const/4 v7, -0x1

    const/16 v8, 0x1b

    const/16 v9, 0x42

    const/4 v10, 0x1

    if-nez v2, :cond_2

    if-eq v1, v9, :cond_0

    if-eq v1, v8, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v5, :cond_0

    if-ne v1, v4, :cond_2

    .line 1002
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const-wide/16 v15, 0x96

    invoke-static/range {v11 .. v16}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    iput v7, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    goto :goto_0

    .line 1005
    :cond_1
    iput v1, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    return v10

    .line 1008
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_3

    iget v2, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne v1, v2, :cond_3

    .line 1009
    iput v7, v0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    :cond_3
    :goto_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1018
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v2

    if-nez v2, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_5

    if-eq v1, v8, :cond_5

    if-eq v1, v9, :cond_5

    const/16 v2, 0x50

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_5

    if-eq v1, v6, :cond_5

    .line 1030
    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_5
    return v10

    .line 1033
    :cond_6
    iget-object v2, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    move-object/from16 v3, p2

    invoke-interface {v2, v1, v3}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1034
    invoke-super/range {p0 .. p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    :cond_8
    :goto_1
    return v10
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1039
    iget v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const-wide/16 p1, 0x0

    .line 1040
    iput-wide p1, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const/4 p1, -0x1

    .line 1041
    iput p1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    return v1

    .line 1045
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 1047
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1052
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public onLifeAlive()V
    .locals 5

    .line 446
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v3, v3, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v3, v3, Lcom/android/camera/module/loader/StartControl;->mNeedViewAnimation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v3, v3, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget-boolean v3, v3, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    .line 449
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    iget v3, v3, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string v3, "onLifeAlive module 0x%x, need anim %b, need blur %b need reconfig %b reset type %d"

    .line 446
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setupCamera(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public onLifeDestroy(Ljava/lang/String;)V
    .locals 2

    .line 460
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLifeDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLifeStart(Ljava/lang/String;)V
    .locals 2

    .line 441
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLifeStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLifeStop(Ljava/lang/String;)V
    .locals 2

    .line 455
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLifeStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onModeSelected(Lcom/android/camera/module/loader/StartControl;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v2

    .line 1120
    sget-object v3, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "onModeSelected from 0x%x to 0x%x"

    .line 1120
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_0

    .line 1122
    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 1123
    invoke-static {v5}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1124
    iget v4, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 1125
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    .line 1124
    invoke-static {v2, v4, v5}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchModeStart(IIZ)V

    .line 1127
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    .line 1129
    iget-boolean v2, v0, Lcom/android/camera/Camera;->mPortraitNewBieShowing:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 1130
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v4, "PortraitHint"

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1132
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "PortraitNewbieDialogFragment already popup, ignore this mode switch"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1137
    :cond_1
    iput-object v1, v0, Lcom/android/camera/Camera;->mStartControl:Lcom/android/camera/module/loader/StartControl;

    .line 1140
    iget v2, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-static {v2}, Lcom/android/camera/module/ModuleManager;->setActiveModuleIndex(I)V

    .line 1141
    iget-boolean v2, v1, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1142
    iget-object v0, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    iget v2, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget-boolean v1, v1, Lcom/android/camera/module/loader/StartControl;->mNeedViewAnimation:Z

    invoke-virtual {v0, v4, v2, v1, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;IZLcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;

    return-void

    .line 1152
    :cond_2
    iget-object v2, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v2, :cond_3

    .line 1153
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/camera/animation/AnimationComposite;->setClickEnable(Z)V

    .line 1156
    :cond_3
    invoke-virtual {v0, v8}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1163
    iput-boolean v7, v1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    .line 1164
    iput v3, v1, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    .line 1165
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1168
    :cond_4
    iget-boolean v2, v1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    if-eqz v2, :cond_5

    .line 1169
    iget-object v2, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    .line 1170
    iget-object v2, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->animateModuleCopyTexture()V

    .line 1173
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/V6GestureRecognizer;->setCurrentModule(Lcom/android/camera/module/Module;)V

    .line 1174
    iget-object v2, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    move-object v10, v2

    check-cast v10, Lcom/android/camera/module/BaseModule;

    if-eqz v10, :cond_6

    .line 1176
    invoke-virtual {v10}, Lcom/android/camera/module/BaseModule;->setDeparted()V

    .line 1179
    :cond_6
    iget v2, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-direct {v0, v2}, Lcom/android/camera/Camera;->createNewModule(I)Lcom/android/camera/module/Module;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 1181
    iget-object v2, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-nez v2, :cond_7

    .line 1182
    new-instance v2, Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-direct {v2, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;-><init>(Lcom/android/camera/Camera;)V

    iput-object v2, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    .line 1183
    iget-object v2, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget v1, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->init(Landroid/support/v4/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 1184
    iget-object v1, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    const/16 v2, 0xff6

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    goto :goto_1

    .line 1186
    :cond_7
    new-instance v2, Lcom/android/camera/Camera$7;

    invoke-direct {v2, v0, v10}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/module/BaseModule;)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    .line 1196
    iget-object v3, v0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v3}, Lcom/android/camera/CameraIntentManager;->isActionPerformed()Z

    move-result v3

    if-nez v3, :cond_8

    move/from16 v17, v8

    goto :goto_0

    :cond_8
    move/from16 v17, v7

    .line 1197
    :goto_0
    new-instance v3, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;

    iget-object v11, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    iget-boolean v12, v1, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v13

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v16

    move-object v9, v3

    invoke-direct/range {v9 .. v17}, Lcom/android/camera/module/loader/CompletablePreFixCameraSetup;-><init>(Lcom/android/camera/module/Module;Lcom/android/camera/module/Module;ZLcom/android/camera/CameraScreenNail;Landroid/content/Intent;Landroid/os/Handler;ZZ)V

    .line 1197
    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    sget-object v4, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 1199
    invoke-virtual {v3, v4}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v3

    .line 1201
    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v2

    .line 1203
    iget-object v3, v0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    iget v4, v1, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget-boolean v1, v1, Lcom/android/camera/module/loader/StartControl;->mNeedViewAnimation:Z

    invoke-virtual {v3, v2, v4, v1, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;IZLcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/Camera;->mCameraPendingSetupDisposable:Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 699
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 700
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    .line 701
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 702
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 703
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->destroy()V

    .line 704
    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    .line 705
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraIntentManager;->setReferer(Landroid/app/Activity;)V

    .line 706
    invoke-direct {p0}, Lcom/android/camera/Camera;->resumeCamera()V

    .line 707
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onNewIntent end"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 832
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager;->holdException(Z)V

    .line 835
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->resetStartTime()V

    .line 836
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    const/4 v0, 0x0

    .line 837
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 838
    iget-object v2, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 839
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 840
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideHibernationFragment()V

    .line 841
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    const/4 v2, -0x1

    .line 842
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    .line 843
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    .line 845
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 847
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->onPause()V

    .line 851
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 852
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v2, :cond_1

    .line 853
    iget-object v2, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 854
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 856
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mSDRegister:Z

    if-eqz v2, :cond_2

    .line 857
    iget-object v2, p0, Lcom/android/camera/Camera;->mSDReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 858
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mSDRegister:Z

    .line 860
    :cond_2
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 861
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 862
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->onActivityPause()V

    .line 864
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    if-eqz v2, :cond_4

    .line 865
    invoke-virtual {v2}, Lcom/android/camera/ui/CameraRootView;->enableTouchEvent()V

    .line 869
    :cond_4
    iget-object v2, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v2, :cond_5

    .line 870
    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    .line 872
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraStat;->recordPageEnd()V

    .line 873
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v2

    const/16 v3, 0xac

    if-ne v2, v3, :cond_6

    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 876
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v1

    if-nez v1, :cond_8

    .line 877
    sget-object v1, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "onPause release camera"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraHolder;->release(Z)V

    .line 880
    invoke-virtual {p0}, Lcom/android/camera/Camera;->releaseCameraScreenNail()V

    goto :goto_1

    .line 874
    :cond_7
    :goto_0
    sget-object v2, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoRecording: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; isGotoGallery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGotoGallery()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; shouldReleaseLater: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    .line 882
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/camera/ThermalDetector;->instance()Lcom/android/camera/ThermalDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThermalDetector;->stopMonitor()V

    .line 883
    sget-object v1, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "onPause end"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0}, Lcom/android/camera/Camera;->unbindGalleryService()V

    .line 886
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    .line 894
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 895
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v1

    .line 896
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 897
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v3

    .line 899
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    .line 895
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/camera/data/backup/DataBackUp;->backupRunning(Lcom/android/camera/data/data/runing/DataItemRunning;IIZ)V

    .line 901
    :cond_9
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager;->setStashParameters(Landroid/hardware/Camera$Parameters;)V

    .line 904
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideNewBie()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1366
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->getCameraRuntimePermissionRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1368
    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1369
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1371
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1372
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result p0

    .line 1373
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 804
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onRestart()V

    .line 805
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkNonUIOrRegisterProximitySensor()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 806
    invoke-static {v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackAppLunchTimeStart(Z)V

    .line 807
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->recordStartTime()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 712
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onResume start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-direct {p0}, Lcom/android/camera/Camera;->bindGalleryService()V

    .line 719
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 722
    :cond_0
    sget-boolean v0, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    invoke-static {p0}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 723
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 725
    :cond_1
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onResume()V

    .line 726
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->onResume()V

    :cond_2
    const-string v0, "CameraActivity"

    .line 729
    invoke-static {p0, v0}, Lcom/android/camera/CameraStat;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 730
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    .line 732
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    if-eqz v1, :cond_3

    .line 733
    sget-object v1, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "onResume reset mDelayReleaseCamera"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    :cond_3
    const/4 v1, 0x1

    .line 736
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 737
    iget-object v2, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 739
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 740
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerReceiver()V

    .line 741
    invoke-direct {p0}, Lcom/android/camera/Camera;->registerSDReceiver()V

    .line 742
    invoke-direct {p0}, Lcom/android/camera/Camera;->resumeCamera()V

    .line 743
    invoke-static {}, Lcom/android/camera/ThermalDetector;->instance()Lcom/android/camera/ThermalDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ThermalDetector;->startMonitor()V

    .line 748
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 749
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 750
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v1

    .line 752
    :goto_1
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 753
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/FileCompat;->hasStoragePermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 754
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v3

    if-nez v3, :cond_6

    .line 755
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "start request documents permission"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/FileCompat;->getStorageAccessForLOLLIPOP(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void

    .line 759
    :cond_6
    sget-object v3, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "documents permission not granted, getKeyguardFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-static {v0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    .line 762
    :cond_7
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 763
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-nez v0, :cond_8

    .line 764
    new-instance v0, Lcom/android/camera/storage/ImageSaver;

    iget-object v3, p0, Lcom/android/camera/Camera;->mImageSaverStatusListener:Lcom/android/camera/Camera$ImageSaverStatusListenerImpl;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v3, v4, v2}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/storage/ImageSaverStatusListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 766
    :cond_8
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0, v2}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    .line 767
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    .line 768
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onResume end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 813
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string p1, "onSaveInstanceState"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSmartShutterClick()V
    .locals 3

    .line 1535
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1537
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 1538
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xab

    .line 1539
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1540
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    if-eqz v0, :cond_0

    const v1, 0x7f090019

    .line 1541
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xf1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x7

    .line 1543
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa1

    const/16 v2, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_2

    .line 1554
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1557
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 1551
    :cond_2
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSmartShutterFocus(Z)V
    .locals 1

    .line 1528
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast p0, Lcom/android/camera/module/BaseModule;

    const/4 v0, 0x2

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonFocus(ZI)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 776
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 782
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onStop start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 785
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    .line 788
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDelayReleaseCamera:Z

    .line 790
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result v1

    const/16 v2, 0xac

    if-ne v1, v2, :cond_1

    .line 791
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast p0, Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onHostStopAndNotifyActionStop()V

    goto :goto_0

    .line 793
    :cond_1
    sget-object v1, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v2, "onStop release camera"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraHolder;->release(Z)V

    .line 796
    invoke-virtual {p0}, Lcom/android/camera/Camera;->releaseCameraScreenNail()V

    .line 800
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v0, "onStop end"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 1103
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1104
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-static {p0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1057
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasFocus->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1059
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    .line 1062
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    .line 1063
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_1

    .line 1064
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1068
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 1069
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->checkActivityOrientation()V

    .line 1070
    iget-object p0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz p0, :cond_3

    .line 1071
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->register()V

    goto :goto_0

    .line 1075
    :cond_2
    iget-object p0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz p0, :cond_3

    const/16 p1, 0x1f

    .line 1076
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 6

    .line 398
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->forceDestroy()V

    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->create(I)V

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/EffectChangedListenerController;->setHoldKey(I)V

    .line 402
    new-instance v0, Lcom/android/camera/module/impl/ImplFactory;

    invoke-direct {v0}, Lcom/android/camera/module/impl/ImplFactory;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    .line 403
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xab

    aput v4, v2, v3

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/module/impl/ImplFactory;->initBase(Lcom/android/camera/ActivityBase;[I)V

    .line 404
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    .line 406
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->checkCallerLegality()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v2}, Lcom/android/camera/CameraIntentManager;->isActionPerformed()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 407
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->parseIntent(Landroid/content/Intent;Ljava/lang/Boolean;ZZ)Landroid/support/v4/util/Pair;

    .line 409
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/camera/data/provider/DataProvider;->setTimeOut(Z)V

    const/4 v1, 0x2

    .line 413
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method protected releaseCameraScreenNail()V
    .locals 1

    .line 611
    invoke-direct {p0}, Lcom/android/camera/Camera;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->releaseCameraScreenNail()V

    :cond_0
    return-void
.end method

.method public restoreWindowBrightness()V
    .locals 2

    .line 1589
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v0

    if-lez v0, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 1595
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1596
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1597
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, -0x1

    .line 1598
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    const/4 v0, 0x0

    .line 1599
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 818
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    :cond_0
    return-void
.end method

.method public resumeCurrentMode(I)V
    .locals 3

    .line 585
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    const/4 v0, 0x1

    .line 586
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 587
    new-instance v0, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;

    invoke-direct {v0, p1}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;-><init>(I)V

    .line 588
    new-instance v1, Lcom/android/camera/module/loader/FunctionResumeModule;

    invoke-direct {v1, p1}, Lcom/android/camera/module/loader/FunctionResumeModule;-><init>(I)V

    .line 590
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-static {p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v2, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 591
    invoke-virtual {p1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 592
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 594
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v2, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 595
    invoke-virtual {v0, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 597
    new-instance v2, Lcom/android/camera/Camera$6;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {p1, v0, v2}, Lio/reactivex/Single;->zipWith(Lio/reactivex/SingleSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Single;

    move-result-object p1

    .line 602
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 603
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    .line 604
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setBlurFlag(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 1268
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1269
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1271
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1272
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setWindowBrightness(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1580
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setBrightnessRampRate(I)V

    const/4 v0, 0x1

    .line 1581
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setScreenEffect(Z)V

    .line 1582
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    .line 1583
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1584
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showNewBie(I)Z
    .locals 5

    const v0, 0x7f100005

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1426
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    .line 1417
    :cond_1
    new-instance p1, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/FrontRotateNewbieDialogFragment;-><init>()V

    .line 1418
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 1419
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "RotateHint"

    .line 1420
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1421
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1422
    iput-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    return v2

    .line 1407
    :cond_2
    new-instance p1, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/PortraitNewbieDialogFragment;-><init>()V

    .line 1408
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 1409
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "PortraitHint"

    .line 1410
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1411
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1412
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mPortraitNewBieShowing:Z

    .line 1413
    iput-object v1, p0, Lcom/android/camera/Camera;->newbieDialogFragmentTag:Ljava/lang/String;

    return v2
.end method

.method public switchCamera(I)V
    .locals 6

    .line 547
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isSwitchingModule()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    sget-object v0, Lcom/android/camera/Camera;->TAG:Ljava/lang/String;

    const-string v1, "switchCamera start switching"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCameraSetup()Z

    const/4 v0, 0x1

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setSwitchingModule(Z)V

    .line 557
    new-instance v0, Lcom/android/camera/module/loader/FunctionSwitchPrepare;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/android/camera/module/loader/FunctionSwitchPrepare;-><init>(II)V

    .line 558
    new-instance v1, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;

    invoke-direct {v1, p1}, Lcom/android/camera/module/loader/FunctionCameraLegacySetup;-><init>(I)V

    .line 559
    new-instance v2, Lcom/android/camera/module/loader/FunctionSwitchModule;

    invoke-direct {v2, p1}, Lcom/android/camera/module/loader/FunctionSwitchModule;-><init>(I)V

    .line 560
    new-instance v3, Lcom/android/camera/module/loader/FunctionDataSetup;

    invoke-direct {v3, p1}, Lcom/android/camera/module/loader/FunctionDataSetup;-><init>(I)V

    .line 561
    new-instance v4, Lcom/android/camera/module/loader/FunctionUISetup;

    invoke-direct {v4, p1}, Lcom/android/camera/module/loader/FunctionUISetup;-><init>(I)V

    .line 565
    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    .line 566
    invoke-direct {p0}, Lcom/android/camera/Camera;->currentIsMainThread()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object v5

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/loader/FunctionSwitchPrepare;->getWorkThread()Lio/reactivex/Scheduler;

    move-result-object v5

    .line 566
    :goto_0
    invoke-virtual {p1, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 569
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lcom/android/camera/Camera;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 571
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 572
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 574
    invoke-virtual {v4}, Lcom/android/camera/module/loader/FunctionUISetup;->getWorkThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 575
    invoke-virtual {p1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 576
    invoke-virtual {p1, v3}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 577
    invoke-virtual {p1, v4}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/Camera;->cameraSetupConsumer:Lio/reactivex/functions/Consumer;

    .line 578
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraSetupDisposable:Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_1
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0}, Lcom/android/camera/module/Module;->unRegisterProtocol()V

    .line 420
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAll()V

    .line 424
    iput-object v1, p0, Lcom/android/camera/Camera;->mImplFactory:Lcom/android/camera/module/impl/ImplFactory;

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    if-eqz v0, :cond_2

    .line 427
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->unRegisterProtocol()V

    .line 428
    iput-object v1, p0, Lcom/android/camera/Camera;->mBaseFragmentDelegate:Lcom/android/camera/fragment/BaseFragmentDelegate;

    .line 430
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->destroyAll(I)V

    return-void
.end method

.method public declared-synchronized updateSurfaceState(I)V
    .locals 1

    monitor-enter p0

    .line 1464
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->updateSurfaceState(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1466
    iget-object p1, p0, Lcom/android/camera/Camera;->mSurfaceCreatedOnSubScribe:Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/SurfaceCreatedOnSubScribe;->onGlSurfaceCreated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
