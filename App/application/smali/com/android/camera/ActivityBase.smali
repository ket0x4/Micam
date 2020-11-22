.class public abstract Lcom/android/camera/ActivityBase;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/AppController;
.implements Lcom/android/camera/module/loader/SurfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$ActivityHandler;
    }
.end annotation


# instance fields
.field private lastTouchTrackTime:J

.field protected mActivityPaused:Z

.field private mAppStartTime:J

.field protected mApplication:Lcom/android/camera/CameraAppImpl;

.field protected mCameraBrightness:Lcom/android/camera/CameraBrightness;

.field private mCameraErrorShown:Z

.field public mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

.field protected mCameraRootView:Lcom/android/camera/ui/CameraRootView;

.field protected mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mCameraSound:Lcom/android/camera/MiuiCameraSound;

.field private mCloseActivityThread:Ljava/lang/Thread;

.field protected mCurrentModule:Lcom/android/camera/module/Module;

.field private mCurrentSurfaceState:I

.field protected mDebugInfoView:Landroid/widget/TextView;

.field protected mDisplayRotation:I

.field protected mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

.field protected mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mGalleryLocked:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mIsFinishInKeyguard:Z

.field private mIsSwitchingModule:Z

.field private mJumpFlag:I

.field protected mJumpedToGallery:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardSecureLocked:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field private mResetGotoGallery:Ljava/lang/Runnable;

.field protected mScreenHint:Lcom/android/camera/ui/ScreenHint;

.field private mSecureUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

.field private mStartFromKeyguard:Z

.field private mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 85
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    .line 89
    iput v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const-wide/16 v1, 0x0

    .line 115
    iput-wide v1, p0, Lcom/android/camera/ActivityBase;->lastTouchTrackTime:J

    .line 120
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    .line 123
    new-instance v0, Lcom/android/camera/ActivityBase$ActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$ActivityHandler;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 755
    new-instance v0, Lcom/android/camera/ActivityBase$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$4;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 802
    iput v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ActivityBase;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ActivityBase;)J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/camera/ActivityBase;J)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->trackStartAppCost(J)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/ActivityBase;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return p1
.end method

.method private checkGalleryLock()V
    .locals 1

    const-string v0, "com.miui.gallery"

    .line 357
    invoke-static {p0, v0}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    return-void
.end method

.method private checkKeyguardFlag(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkKeyguardFlag updateKeyguardFlag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mStartFromKeyguard:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mIsFinishInKeyguard:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityBase"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 377
    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    if-nez p1, :cond_1

    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v2, 0x80000

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 379
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    .line 380
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setStartFromKeyguard(Z)V

    .line 383
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    goto :goto_0

    .line 385
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 388
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    goto :goto_2

    .line 389
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez p1, :cond_5

    .line 390
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 395
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkKeyguard: fromKeyguard="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " keyguardSecureLocked="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " secureUriList is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-nez p0, :cond_6

    const-string p0, "null"

    goto :goto_3

    :cond_6
    const-string p0, "not null"

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 395
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearNotification()V
    .locals 1

    const-string v0, "notification"

    .line 796
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    .line 798
    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    return-void
.end method

.method private getAndroidOneKeyguardFlag()Z
    .locals 2

    .line 361
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isQuickLaunch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 367
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method private getSecureStoreIds()[J
    .locals 4

    .line 717
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 722
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 723
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-array p0, v1, [J

    return-object p0
.end method

.method private startFromLauncher()Z
    .locals 1

    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.intent.category.LAUNCHER"

    .line 308
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private trackStartAppCost(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/16 p0, 0x32

    .line 851
    invoke-static {p1, p2, p0}, Lcom/android/camera/CameraStatUtil;->round(JI)J

    move-result-wide p0

    const-string p2, "capture"

    const-string v0, "start_app_cost"

    .line 850
    invoke-static {p2, v0, p0, p1}, Lcom/android/camera/CameraStat;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 853
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackStartAppCost wrong time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", start time: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", now: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityBase"

    .line 853
    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addSecureUri(Landroid/net/Uri;)V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 614
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public couldShowErrorDialog()Z
    .locals 0

    .line 225
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public createCameraScreenNail(ZZ)V
    .locals 1

    .line 508
    iget-object p1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez p1, :cond_0

    .line 510
    new-instance p1, Lcom/android/camera/ActivityBase$2;

    invoke-direct {p1, p0}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 547
    new-instance p2, Lcom/android/camera/ActivityBase$3;

    invoke-direct {p2, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    .line 559
    new-instance v0, Lcom/android/camera/CameraScreenNail;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->initCameraScreenNail()V

    return-void
.end method

.method public dismissKeyguard()V
    .locals 2

    .line 773
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public getCameraAppImpl()Lcom/android/camera/CameraAppImpl;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    return-object p0
.end method

.method public getCameraIntentManager()Lcom/android/camera/CameraIntentManager;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    if-nez v0, :cond_0

    .line 860
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    .line 862
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraIntentManager:Lcom/android/camera/CameraIntentManager;

    return-object p0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object p0
.end method

.method public getCurrentModule()Lcom/android/camera/module/Module;
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object p0
.end method

.method public getEdgeShutterView()Lcom/android/camera/ui/V9EdgeShutterView;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mEdgeShutterView:Lcom/android/camera/ui/V9EdgeShutterView;

    return-object p0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object p0
.end method

.method protected getKeyguardFlag()Z
    .locals 3

    .line 347
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->getAndroidOneKeyguardFlag()Z

    move-result p0

    return p0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 353
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getScreenHint()Lcom/android/camera/ui/ScreenHint;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    return-object p0
.end method

.method public getSecureUriList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 740
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V9SmartShutterButton;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mSmartShutterButton:Lcom/android/camera/ui/V9SmartShutterButton;

    return-object p0
.end method

.method public getSoundPlayTime()J
    .locals 2

    .line 645
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz p0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/camera/MiuiCameraSound;->getLastSoundPlayTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    return-object p0
.end method

.method public gotoGallery()V
    .locals 7

    .line 652
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_9

    .line 653
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 655
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 656
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    const-string v3, "ActivityBase"

    if-nez v2, :cond_1

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri invalid. uri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->isWaitingForUri()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached()V

    :cond_0
    return-void

    .line 664
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 665
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v2
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "com.miui.gallery"

    if-eqz v2, :cond_2

    :try_start_1
    const-string v2, "com.google.android.apps.photos"

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from_MiuiCamera"

    const/4 v5, 0x1

    .line 666
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v2}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    const-string v2, "camera-brightness"

    .line 668
    iget-object v6, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v6}, Lcom/android/camera/CameraBrightness;->getCurrentBrightness()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 671
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.google.android.apps.photos.api.secure_mode"

    .line 672
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v2, "StartActivityWhenLocked"

    .line 674
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    :cond_5
    :goto_1
    invoke-static {p0, v4}, Lcom/android/camera/Util;->isAppLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "skip_interception"

    .line 678
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 681
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 682
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "com.google.android.apps.photos.api.secure_mode_ids"

    .line 683
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->getSecureStoreIds()[J

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    const-string v2, "SecureUri"

    .line 685
    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_8
    :goto_2
    const-string v2, "device_orientation"

    .line 688
    iget v4, p0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 690
    iput v5, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 691
    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mJumpedToGallery:Z

    .line 698
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 699
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_9

    .line 702
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/module/Module;->enableCameraControls(Z)V

    .line 703
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->trackGotoGallery()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 707
    :catch_0
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "review image fail. uri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_3
    return-void
.end method

.method public declared-synchronized hasSurface()Z
    .locals 3

    monitor-enter p0

    .line 806
    :try_start_0
    iget v0, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    monitor-exit p0

    return v2

    :cond_1
    const/4 v0, 0x1

    .line 812
    monitor-exit p0

    return v0

    .line 816
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/camera/Util;->sIsFullScreenNavBarHidden:Z

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ActivityBase$5;

    invoke-direct {v1, p0}, Lcom/android/camera/ActivityBase$5;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 825
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initCameraScreenNail()V
    .locals 3

    const-string v0, "ActivityBase"

    const-string v1, "initCameraScreenNail"

    .line 565
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 568
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 569
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setSize(II)V

    .line 571
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportStartupOptimize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->preCreateSurfaceTexture()V

    :cond_0
    return-void
.end method

.method public isActivityPaused()Z
    .locals 0

    .line 787
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mActivityPaused:Z

    return p0
.end method

.method public isGalleryLocked()Z
    .locals 0

    .line 623
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mGalleryLocked:Z

    return p0
.end method

.method public isGotoGallery()Z
    .locals 1

    .line 744
    iget p0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedResetGotoGallery()Z
    .locals 3

    .line 748
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 749
    iput v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return v2

    :cond_0
    return v1
.end method

.method public isSwitchingModule()Z
    .locals 0

    .line 779
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return p0
.end method

.method public loadCameraSound(I)V
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz p0, :cond_0

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/camera/MiuiCameraSound;->load(I)V

    :cond_0
    return-void
.end method

.method protected abstract notifyOnFirstFrameArrived(I)V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 730
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/module/Module;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "ActivityBase"

    .line 260
    sget-boolean v1, Lcom/android/camera/Util;->sIsNotchDevice:Z

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->handleNotchScreen(Landroid/view/Window;)V

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 267
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 269
    new-instance v1, Lcom/android/camera/ui/ScreenHint;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenHint;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mScreenHint:Lcom/android/camera/ui/ScreenHint;

    .line 270
    new-instance v1, Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {v1, p0}, Lcom/android/camera/ThumbnailUpdater;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    const-string v1, "keyguard"

    .line 271
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 272
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getKeyguardFlag()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    .line 273
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraAppImpl;->addActivity(Landroid/app/Activity;)V

    .line 278
    new-instance v1, Lcom/android/camera/CameraBrightness;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraBrightness;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    .line 279
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 281
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 291
    invoke-virtual {v1}, Ljava/lang/IllegalThreadStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 295
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->startFromLauncher()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    .line 296
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needLitScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const-string p1, "onCreate: addFlag --> FLAG_TURN_SCREEN_ON"

    .line 298
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x200000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 497
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 498
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraAppImpl;->removeActivity(Landroid/app/Activity;)V

    .line 499
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/android/camera/MiuiCameraSound;->release()V

    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 503
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 482
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 484
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayoutChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/SurfaceTextureScreenNail;->setRenderArea(Landroid/graphics/Rect;)V

    .line 591
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    .line 592
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 315
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 316
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    const/4 p1, 0x1

    .line 317
    invoke-direct {p0, p1}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    const-string v0, "ActivityBase"

    const-string v1, "onPause"

    .line 401
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 406
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mResetGotoGallery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mSecureUriList:Ljava/util/ArrayList;

    .line 410
    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    goto :goto_0

    .line 411
    :cond_1
    iget v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-ne v0, v1, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->clearNotification()V

    .line 416
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "ActivityBase"

    const-string v1, "onRestart"

    .line 340
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 342
    invoke-direct {p0, v0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 322
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    .line 325
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;->checkGalleryLock()V

    .line 332
    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ActivityBase;->checkKeyguardFlag(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->resume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 489
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 490
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz p0, :cond_0

    .line 491
    invoke-interface {p0, p1}, Lcom/android/camera/module/Module;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onPause()V

    .line 433
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0}, Lcom/android/camera/CameraBrightness;->onPause()V

    .line 435
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 437
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 441
    :goto_0
    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mCloseActivityThread:Ljava/lang/Thread;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 445
    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: clearFlag --> FLAG_TURN_SCREEN_ON and isChangingConfigurations is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityBase"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 452
    iget v1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFromKeyguard and pause, finish activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->saveThumbnailToFile()V

    .line 461
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mThumbnailUpdater:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater;->cancelTask()V

    :cond_3
    return-void
.end method

.method public playCameraSound(I)V
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    invoke-virtual {p0, p1}, Lcom/android/camera/MiuiCameraSound;->playSound(I)V

    return-void
.end method

.method protected recordStartTime()V
    .locals 2

    .line 841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    return-void
.end method

.method protected releaseCameraScreenNail()V
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz p0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    :cond_0
    return-void
.end method

.method public resetStartTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 845
    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    return-void
.end method

.method public resume()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lcom/android/camera/MiuiCameraSound;

    invoke-direct {v0, p0}, Lcom/android/camera/MiuiCameraSound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraSound:Lcom/android/camera/MiuiCameraSound;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->onResume()V

    .line 426
    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 428
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness;->onResume()V

    return-void
.end method

.method public setJumpFlag(I)V
    .locals 0

    .line 769
    iput p1, p0, Lcom/android/camera/ActivityBase;->mJumpFlag:I

    return-void
.end method

.method public setSwitchingModule(Z)V
    .locals 0

    .line 783
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mIsSwitchingModule:Z

    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showErrorDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mCameraErrorShown:Z

    return-void
.end method

.method public startFromKeyguard()Z
    .locals 0

    .line 627
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mStartFromKeyguard:Z

    return p0
.end method

.method public startFromSecureKeyguard()Z
    .locals 0

    .line 619
    iget-boolean p0, p0, Lcom/android/camera/ActivityBase;->mKeyguardSecureLocked:Z

    return p0
.end method

.method public declared-synchronized updateSurfaceState(I)V
    .locals 0

    monitor-enter p0

    .line 834
    :try_start_0
    iput p1, p0, Lcom/android/camera/ActivityBase;->mCurrentSurfaceState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
